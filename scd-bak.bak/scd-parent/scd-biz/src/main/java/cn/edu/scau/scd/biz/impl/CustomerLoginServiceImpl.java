package cn.edu.scau.scd.biz.impl;

import java.util.List;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import cn.edu.scau.scd.biz.CustomerLoginService;
import cn.edu.scau.scd.mapper.CustomerMapper;
import cn.edu.scau.scd.po.Customer;
import cn.edu.scau.scd.po.CustomerExample;
import cn.edu.scau.scd.po.CustomerExample.Criteria;
import cn.edu.scau.scd.po.ScdReturn;
import cn.edu.scau.scd.utils.JsonUtils;
import cn.edu.scau.scd.utils.jedis.JedisClient;

@Service
public class CustomerLoginServiceImpl implements CustomerLoginService {

	@Autowired
	private CustomerMapper customerMapper;
	
	@Autowired
	private JedisClient jedisClient;
	
	@Value("${CUSTOMER_KEY_PREFIX}")
	private String CUSTOMER_KEY_PREFIX;
	@Value("${SESSION_EXPIRE}")
	private Integer SESSION_EXPIRE;
	
	@Override
	public ScdReturn login(String custName, String password) {
		CustomerExample example = new CustomerExample();
		Criteria criteria = example.createCriteria();
		criteria.andCustNameEqualTo(custName);
		
		// 没此用户名的用户
		List<Customer> list = customerMapper.selectByExample(example);
		if (null == list || list.size() == 0) {
			return ScdReturn.build(400, "用户名或密码错误");
		}
		
		Customer customer = list.get(0);
		// 密码错误
		if (!customer.getCustPwd().equals(DigestUtils.md5DigestAsHex(password.getBytes()))) {
			return ScdReturn.build(400, "用户名或密码错误");
		}
		// 密码正确，登录成功， 设置缓存
		String token = UUID.randomUUID().toString();
		customer.setCustPwd(null);
		
		jedisClient.set(CUSTOMER_KEY_PREFIX + ":" + token, JsonUtils.objectToJson(customer));
		jedisClient.expire(CUSTOMER_KEY_PREFIX + ":" + token, SESSION_EXPIRE);
		return ScdReturn.ok(token);
	}

	@Override
	public ScdReturn getCustomerByToken(String token) {
		String json = jedisClient.get(CUSTOMER_KEY_PREFIX + ":" + token);
		if (StringUtils.isBlank(json)) {
			return ScdReturn.build(400, "用户登录已过期，请重新登录");
		}
		
		jedisClient.expire(CUSTOMER_KEY_PREFIX + ":" + token, SESSION_EXPIRE);
		
		Customer customer = JsonUtils.jsonToPojo(json, Customer.class);
		return ScdReturn.ok(customer);
	}
	
	@Override
	public ScdReturn logout(String token) {
		try {
			jedisClient.expire(CUSTOMER_KEY_PREFIX + ":" + token, -1);
		} catch (Exception e) {
			e.printStackTrace();
			return ScdReturn.build(500, "退出失败");
		}
		return ScdReturn.ok();
	}
	
	
}
