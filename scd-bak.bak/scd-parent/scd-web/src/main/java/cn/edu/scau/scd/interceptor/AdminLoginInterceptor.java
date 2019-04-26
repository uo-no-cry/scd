package cn.edu.scau.scd.interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.scau.scd.biz.AdministratorLoginService;
import cn.edu.scau.scd.po.ScdReturn;
import cn.edu.scau.scd.utils.CookieUtils;

public class AdminLoginInterceptor implements HandlerInterceptor {
	
	@Value("${ADMIN_COOKIE_TOKEN_KEY}")
	private String ADMIN_COOKIE_TOKEN_KEY;
	
	@Value("${SSO_ADMIN_LOGIN_URL}")
	private String SSO_ADMIN_LOGIN_URL;
	
	@Autowired
	private AdministratorLoginService administratorLoginService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//这里进行用户身份的认证，在进入目标方法之前执行该方法。如果返回为false表示拦截，不让访问，如果是true，表示放行。
		
		//1.通过调用SSO服务获取用户的信息
			//1.1 从cookie中获取TT_TOKEN 
		String value = CookieUtils.getCookieValue(request, ADMIN_COOKIE_TOKEN_KEY);
			//1.2 调用服务(加入依赖，引入服务，注入服务，使用)
		ScdReturn result = administratorLoginService.getAdministratorByToken(value);
		
		if(result.getData()==null){
		//2.如果用户不存在
				//重定向到SSO系统的登录页面
			response.sendRedirect(SSO_ADMIN_LOGIN_URL+"/admin/logins");

		}else{
		
		//3.如果用户存在
				//放行
			request.setAttribute("adminInfo", result.getData());
			return true;
		}
				
		return false;
	}
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// 执行Handler之后返回ModelAndView之前

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// 返回ModelAndView之后，执行。异常处理。

	}

}
