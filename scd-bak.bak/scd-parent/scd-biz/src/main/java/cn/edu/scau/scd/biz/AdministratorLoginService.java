package cn.edu.scau.scd.biz;

import cn.edu.scau.scd.po.ScdReturn;

public interface AdministratorLoginService {
	ScdReturn login (String adminName, String password);
	
	ScdReturn getAdministratorByToken(String token);
	
	ScdReturn logout (String token);

}
