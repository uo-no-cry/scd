package cn.edu.scau.scd.biz;

import cn.edu.scau.scd.po.ScdReturn;

public interface CustomerLoginService {
	ScdReturn login (String custName, String password);
	
	ScdReturn getCustomerByToken(String token);
	
	ScdReturn logout (String token);

}
