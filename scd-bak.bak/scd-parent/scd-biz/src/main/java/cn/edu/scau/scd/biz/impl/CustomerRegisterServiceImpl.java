package cn.edu.scau.scd.biz.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import cn.edu.scau.scd.biz.CustomerRegisterService;
import cn.edu.scau.scd.mapper.CustomerMapper;
import cn.edu.scau.scd.po.Customer;
import cn.edu.scau.scd.po.CustomerExample;
import cn.edu.scau.scd.po.CustomerExample.Criteria;
import cn.edu.scau.scd.po.ScdReturn;
import cn.edu.scau.scd.utils.IDUtils;


@Service
public class CustomerRegisterServiceImpl implements CustomerRegisterService {
	@Autowired
	private CustomerMapper customerMapper;
	
	@Override
	public ScdReturn checkData(String param, int type) {
		
		CustomerExample example = new CustomerExample();
		Criteria criteria = example.createCriteria();
		// 1:custName 2:phone 3:email
		if (type == 1) {
			criteria.andCustNameEqualTo(param);
		} else if (type == 2) {
			criteria.andCustPhoneEqualTo(param);
		} else if (type == 3) {
			criteria.andCustEmailEqualTo(param);
		} else {
			return ScdReturn.build(400, "非法参数");
		}
		
		List<Customer> list = customerMapper.selectByExample(example);
		if (null == list || list.size() == 0) {
			return ScdReturn.ok(true);
		}
		return ScdReturn.ok(false);
	}

	@Override
	public ScdReturn register(Customer customer) {
		if (StringUtils.isEmpty(customer.getCustName())) {
			return ScdReturn.build(400, "注册失败，请校验数据后再提交");
		}
		if ( StringUtils.isEmpty(customer.getCustPwd())) {
			return ScdReturn.build(400, "注册失败，请校验数据后再提交");
		}
		
		ScdReturn checkDatacustomername = checkData(customer.getCustName(), 1);
		if (!(Boolean)checkDatacustomername.getData()) {
			return ScdReturn.build(400, "用户名已经被注册");
		}
		if (StringUtils.isNotBlank(customer.getCustPhone())) {
			ScdReturn checkDataPhone = checkData(customer.getCustPhone(), 2);
			if (!(Boolean)checkDataPhone.getData()) {
				return ScdReturn.build(400, "手机已经被注册");
			}
		}
		if (StringUtils.isNotBlank(customer.getCustEmail())) {
			ScdReturn checkDataEmail = checkData(customer.getCustEmail(), 3);
			if (!(Boolean)checkDataEmail.getData()) {
				return ScdReturn.build(400, "邮箱已经被注册");
			}
		}
		
		// 加密
		customer.setCustPwd(DigestUtils.md5DigestAsHex(customer.getCustPwd().getBytes()));
		
		// 生成id
		customer.setCustId(Long.toString(IDUtils.genCustId()));
		
		
		customerMapper.insertSelective(customer);
		return ScdReturn.ok();
	}

}
