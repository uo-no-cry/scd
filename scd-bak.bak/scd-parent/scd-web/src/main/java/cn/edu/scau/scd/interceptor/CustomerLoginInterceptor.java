package cn.edu.scau.scd.interceptor;

import java.net.URLEncoder;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.scau.scd.biz.CustomerLoginService;
import cn.edu.scau.scd.po.ScdReturn;
import cn.edu.scau.scd.utils.CookieUtils;

public class CustomerLoginInterceptor implements HandlerInterceptor {

	@Value("${CLIENT_COOKIE_TOKEN_KEY}")
	private String CLIENT_COOKIE_TOKEN_KEY;

	@Value("${SSO_CUST_LOGIN_URL}")
	private String SSO_CUST_LOGIN_URL;

	@Autowired
	private CustomerLoginService customerLoginService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 这里进行用户身份的认证，在进入目标方法之前执行该方法。如果返回为false表示拦截，不让访问，如果是true，表示放行。

		// 1.通过调用SSO服务获取用户的信息
		// 1.1 从cookie中获取TT_TOKEN
		String value = CookieUtils.getCookieValue(request, CLIENT_COOKIE_TOKEN_KEY);
		// 1.2 调用服务(加入依赖，引入服务，注入服务，使用)
		ScdReturn result = customerLoginService.getCustomerByToken(value);

		if (result.getData() == null) {
			// 2.如果用户不存在
			// 重定向到SSO系统的登录页面
				// 获取并编码原URL 
			String sourceURL = request.getHeader("Referer");
			String encodeSourceURL = URLEncoder.encode(sourceURL, "UTF-8");
			String redirectURL = SSO_CUST_LOGIN_URL + "/portail/login-register?redirectURL=" + encodeSourceURL;
			
			if (request.getHeader("x-requested-with") != null
					&& request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")) {
				// 如果是ajax请求

				ServletOutputStream out = response.getOutputStream();

				out.print(redirectURL);// 返回给前端页面跳转页面
				out.flush();
				out.close();
			} else {
				response.sendRedirect(redirectURL);
			}
			return false;
			
		} else {

			// 3.如果用户存在
			// 放行
			request.setAttribute("customerInfo", result.getData());
			return true;
		}
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
