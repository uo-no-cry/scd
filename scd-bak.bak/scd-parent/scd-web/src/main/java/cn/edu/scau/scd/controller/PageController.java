package cn.edu.scau.scd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.scau.scd.biz.CMS;
import cn.edu.scau.scd.biz.ItemService;
import cn.edu.scau.scd.po.BootstrapTableData;
import cn.edu.scau.scd.po.Cms;
import cn.edu.scau.scd.po.Item;
import cn.edu.scau.scd.po.ScdReturn;

@Controller
public class PageController {
	
	@Autowired
	private CMS cmsService;
	
	@Autowired
	private ItemService itemService;
	
	@RequestMapping("/admin/{page}")
	public ModelAndView showAdminPage (@PathVariable String page, @RequestParam(defaultValue="") String redirect, ModelAndView mav) {
		System.out.println("page for you  ========= " + "/WEB-INF/admin/" + page);
		
		mav.setViewName("/WEB-INF/admin/" + page + ".jsp");
		mav.addObject("redirect", redirect);
//		return "/WEB-INF/admin/" + page + ".jsp";
		return mav;
	}
	
	@RequestMapping("/portail/{page}")
	public ModelAndView showPortailPage (@PathVariable String page, @RequestParam(defaultValue="") String redirect, ModelAndView mav) {
		System.out.println("page for you  ========= " + "/WEB-INF/portail/" + page);
		
		mav.setViewName("/WEB-INF/portail/" + page + ".jsp");
		mav.addObject("redirect", redirect);
		return mav;
	}
	
	@RequestMapping("/portail/shop.action")
	public ModelAndView showShopPage (@RequestParam(defaultValue="") String search, @RequestParam(defaultValue="") String redirect, ModelAndView mav,
			@RequestParam(defaultValue="0") int offset, @RequestParam(defaultValue="9") int limit) {
		System.out.println("page for you  ========= " + "/WEB-INF/portail/shop.jsp");
		BootstrapTableData tableData = null;
		// 查询条件
		if (!"".equals(search)) {
			Item searchItem = new Item();
			searchItem.setItemName(search.trim());
			tableData = itemService.shopSearch(searchItem, offset, limit);
		} else {
			tableData = itemService.getItemList(offset, limit);
		}
		List<Item> itemList = tableData.getRows();
		
		
		mav.addObject("total", tableData.getTotal());
		mav.addObject("itemList", itemList);
		mav.addObject("currentOffset", offset);
		mav.addObject("searchInfo", search);
		mav.setViewName("/WEB-INF/portail/shop.jsp");
//		return "/WEB-INF/admin/" + page + ".jsp";
		return mav;
	}
	
	@RequestMapping("/portail/index.action")
	public ModelAndView showProtailPage (ModelAndView mav) {
		List<Cms> contentList = cmsService.getHomePageContent();
		List<Cms> newProductList = cmsService.getHomePageNewProduct();
		
		System.out.println(newProductList.size());
		
		mav.addObject("contentList", contentList);
		mav.addObject("newProductList", newProductList);
		
		mav.setViewName("/WEB-INF/portail/index4.jsp");
		return mav;
	}
	
	@RequestMapping("/portail/singleProduct.action")
	public ModelAndView showProductPage (ModelAndView mav, String itemId) {
		mav.setViewName("/WEB-INF/portail/single-product.jsp");
		
		Item item = itemService.getItemById(itemId);
		
		mav.addObject("item", item);
		
		return mav;
	}
	
	@RequestMapping("/admin/index.action")
	public ModelAndView showAdminPage (ModelAndView mav, @RequestParam(defaultValue="") String token) {
		mav.setViewName("/WEB-INF/admin/index.jsp");
		mav.addObject("token", token);
		return mav;
	}
	
}






