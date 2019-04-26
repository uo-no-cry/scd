package cn.edu.scau.scd.biz;

import cn.edu.scau.scd.po.Customer;
import cn.edu.scau.scd.po.ScdReturn;

public interface CustomerRegisterService {
	
	ScdReturn checkData(String param, int type);
	
	ScdReturn register(Customer customer);
}
