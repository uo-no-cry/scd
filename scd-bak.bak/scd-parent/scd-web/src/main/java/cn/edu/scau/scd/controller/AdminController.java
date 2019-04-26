package cn.edu.scau.scd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.scd.biz.AdministratorLoginService;
import cn.edu.scau.scd.po.ScdReturn;
import cn.edu.scau.scd.utils.CookieUtils;
import cn.edu.scau.scd.utils.JsonUtils;


@Controller
public class AdminController {
	@Autowired
	private AdministratorLoginService administratorLoginService;
	@Value("${ADMIN_COOKIE_TOKEN_KEY}")
	private String ADMIN_COOKIE_TOKEN_KEY;

	@RequestMapping(value="/admin/logins.action", method=RequestMethod.POST)
	@ResponseBody
	public ScdReturn login (String adminName, String password,
			HttpServletRequest request, HttpServletResponse response) {
		
		ScdReturn result = administratorLoginService.login(adminName, password);
		
		// 若登录成功， 设置Cookie
		if (result.getStatus() == 200) {
			String token = result.getData().toString();
			CookieUtils.setCookie(request, response, ADMIN_COOKIE_TOKEN_KEY, token);
		} 
		
		return result;
	}
	
	@RequestMapping(value="/admin/getAdminByToken/{token}", produces=MediaType.APPLICATION_JSON_VALUE + ";charset=utf-8")
	@ResponseBody
	public String getUserByToken (@PathVariable String token, String callback) {
		ScdReturn result = administratorLoginService.getAdministratorByToken(token);
		if (StringUtils.isNotBlank(callback)) {
			String strResult = callback + "(" + JsonUtils.objectToJson(result) + ")";
			return strResult;
		}
		return JsonUtils.objectToJson(result);
	}
	
	@RequestMapping("/admin/logout/{token}")
	@ResponseBody
	public ScdReturn logout (@PathVariable String token) {
		ScdReturn result = administratorLoginService.logout(token);
		return result;
	}
}
