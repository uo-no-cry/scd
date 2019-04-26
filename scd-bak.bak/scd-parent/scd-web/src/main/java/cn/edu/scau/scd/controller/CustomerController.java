package cn.edu.scau.scd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.scau.scd.biz.CustomerLoginService;
import cn.edu.scau.scd.biz.CustomerRegisterService;
import cn.edu.scau.scd.po.Customer;
import cn.edu.scau.scd.po.ScdReturn;
import cn.edu.scau.scd.utils.CookieUtils;

@Controller
public class CustomerController {

	@Autowired
	private CustomerRegisterService registerService;
	@Autowired
	private CustomerLoginService loginService;
	
	@Value("${CLIENT_COOKIE_TOKEN_KEY}")
	private String CLIENT_COOKIE_TOKEN_KEY;

	@RequestMapping(path = "/portail/register.action")
	@ResponseBody
	public ScdReturn custRegister(Customer cust) {
		return registerService.register(cust);
	}

	@RequestMapping(path = "/portail/login.action")
	@ResponseBody
	public ScdReturn custLogin(String custName, String custPwd, HttpServletRequest request,
			HttpServletResponse response) {
		ScdReturn result = loginService.login(custName, custPwd);

		// 若登录成功， 设置Cookie
		if (result.getStatus() == 200) {
			String token = result.getData().toString();
			CookieUtils.setCookie(request, response, CLIENT_COOKIE_TOKEN_KEY, token);
		}

		return result;
	}
}
