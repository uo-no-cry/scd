package cn.edu.scau.scd.biz.impl;

import java.util.List;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import cn.edu.scau.scd.biz.AdministratorLoginService;
import cn.edu.scau.scd.mapper.AdminMapper;
import cn.edu.scau.scd.po.Admin;
import cn.edu.scau.scd.po.AdminExample;
import cn.edu.scau.scd.po.AdminExample.Criteria;
import cn.edu.scau.scd.po.ScdReturn;
import cn.edu.scau.scd.utils.JsonUtils;
import cn.edu.scau.scd.utils.jedis.JedisClient;

@Service
public class AdministratorLoginServiceImpl implements AdministratorLoginService {

	@Autowired
	private AdminMapper adminMapper;
	
	@Autowired
	private JedisClient jedisClient;
	
	@Value("${ADMINISTRATOR_KEY_PREFIX}")
	private String ADMINISTRATOR_KEY_PREFIX;
	@Value("${SESSION_EXPIRE}")
	private Integer SESSION_EXPIRE;
	
	@Override
	public ScdReturn login(String adminName, String password) {
		AdminExample example = new AdminExample();
		Criteria criteria = example.createCriteria();
		criteria.andAdminNameEqualTo(adminName);
		
		List<Admin> list = adminMapper.selectByExample(example);
		if (null == list || list.size() == 0) {
			return ScdReturn.build(400, "用户名或密码错误");
		}
		
		Admin administrator = list.get(0);
		
		if (!administrator.getAdminPwd().equals(password)) {
			return ScdReturn.build(400, "用户名或密码错误");
		}
		
		String token = UUID.randomUUID().toString();
		administrator.setAdminPwd(null);
		
		jedisClient.set(ADMINISTRATOR_KEY_PREFIX + ":" + token, JsonUtils.objectToJson(administrator));
		jedisClient.expire(ADMINISTRATOR_KEY_PREFIX + ":" + token, SESSION_EXPIRE);
		return ScdReturn.ok(token);
	}

	@Override
	public ScdReturn getAdministratorByToken(String token) {
		String json = jedisClient.get(ADMINISTRATOR_KEY_PREFIX + ":" + token);
		if (StringUtils.isBlank(json)) {
			return ScdReturn.build(400, "用户登录已过期，请重新登录");
		}
		
		jedisClient.expire(ADMINISTRATOR_KEY_PREFIX + ":" + token, SESSION_EXPIRE);
		
		Admin administrator = JsonUtils.jsonToPojo(json, Admin.class);
		return ScdReturn.ok(administrator);
	}
	
	@Override
	public ScdReturn logout(String token) {
		try {
			jedisClient.expire(ADMINISTRATOR_KEY_PREFIX + ":" + token, -1);
		} catch (Exception e) {
			e.printStackTrace();
			return ScdReturn.build(500, "退出失败");
		}
		return ScdReturn.ok();
	}
	
	
}
