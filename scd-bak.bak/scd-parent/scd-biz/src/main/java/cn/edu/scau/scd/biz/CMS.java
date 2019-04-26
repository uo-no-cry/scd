package cn.edu.scau.scd.biz;

import java.util.List;

import cn.edu.scau.scd.po.Cms;

public interface CMS {
	
	boolean updateContent(Cms cms);
	
	boolean isContained (String cmsCatId);
	
	List<Cms> getHomePageContent ();
	
	String getOldPicPath(String cmsCatId);
	
	List<Cms> getHomePageNewProduct();
}
