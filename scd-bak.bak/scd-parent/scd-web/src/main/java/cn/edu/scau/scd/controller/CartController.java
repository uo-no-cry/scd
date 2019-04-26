package cn.edu.scau.scd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.scau.scd.biz.CartService;
import cn.edu.scau.scd.biz.CustomerLoginService;
import cn.edu.scau.scd.biz.ItemService;
import cn.edu.scau.scd.po.CartData;
import cn.edu.scau.scd.po.CartItem;
import cn.edu.scau.scd.po.CartItemDetail;
import cn.edu.scau.scd.po.Customer;
import cn.edu.scau.scd.po.Item;
import cn.edu.scau.scd.po.ScdReturn;
import cn.edu.scau.scd.utils.CookieUtils;

@Controller
public class CartController {

	@Value("${CLIENT_COOKIE_TOKEN_KEY}")
	private String CLIENT_COOKIE_TOKEN_KEY;

	@Autowired
	private CustomerLoginService customerLoginService;
	@Autowired
	private CartService cartService;
	@Autowired
	private ItemService itemService;

	@RequestMapping("/portail/addItemToCart")
	@ResponseBody
	public ScdReturn getCart(@RequestParam(required=true) String itemId, @RequestParam(required=true) Integer itemNum, HttpServletRequest request,
			HttpServletResponse response) {
		
		try {
		
			response.setCharacterEncoding("UTF-8");
			response.setContentType("application/x-javascript;charset=UTF-8");
			// 获取用户ID
			String cookieValue = CookieUtils.getCookieValue(request, CLIENT_COOKIE_TOKEN_KEY);
			ScdReturn result = customerLoginService.getCustomerByToken(cookieValue);
			String custId = ((Customer) result.getData()).getCustId();

			// 添加到购物车

			
			return cartService.addItemToCart(custId, itemId, itemNum);
		} catch (Exception e) {
			e.printStackTrace();
			return ScdReturn.build(400, "加入购物车失败鸟...");
		}
	}
	
	@RequestMapping(path="/portail/getMyCartList")
	@ResponseBody
	public ModelAndView getMyCartList (HttpServletRequest request, ModelAndView mav) {
		
		String cookieValue = CookieUtils.getCookieValue(request, CLIENT_COOKIE_TOKEN_KEY);
		ScdReturn result = customerLoginService.getCustomerByToken(cookieValue);
		String custId = ((Customer) result.getData()).getCustId();
		
		List<CartItem> list = cartService.getCartListByCustId(custId);
		CartData cartData = new CartData();
		int itemTotalCost = 0;
		for (CartItem cartItem : list) {
			CartItemDetail detail = new CartItemDetail();
			
			Item item = itemService.getItemById(cartItem.getItemId());
			
			detail.setNum(cartItem.getItemNum());
			detail.setItemPrice(item.getItemPrice());
			detail.setCustId(cartItem.getCustId());
			detail.setItemId(cartItem.getItemId());
			detail.setItemImgs(item.getItemImgs());
			detail.setItemDesc(item.getItemDesc());
			detail.setItemStatus(item.getItemStatus());
			detail.setItemCatName(item.getItemCatName());
			detail.setItemName(item.getItemName());
			
			itemTotalCost += cartItem.getItemNum() * item.getItemPrice();
			
			cartData.addItemDetail(detail);
		}
		cartData.setItemTotalCost(itemTotalCost);
		cartData.setTotal(cartData.getItemTotalCost() + cartData.getExpressCharges());
		
		mav.addObject("cartData", cartData);
		mav.setViewName("/WEB-INF/portail/cart.jsp");
		return mav;
	}
	
	@RequestMapping(path="/portail/deleteCartItemById")
	@ResponseBody
	public ScdReturn deleteCartItemById (@RequestParam(required=true) String itemId, HttpServletRequest request) {
		
		String cookieValue = CookieUtils.getCookieValue(request, CLIENT_COOKIE_TOKEN_KEY);
		ScdReturn result = customerLoginService.getCustomerByToken(cookieValue);
		String custId = ((Customer) result.getData()).getCustId();
		
		return cartService.deleteCartItemById(custId, itemId);
	}
	
	@RequestMapping(path="/portail/updateCartItemById")
	@ResponseBody
	public ScdReturn updateCartItemById (@RequestParam(required=true) String itemId, @RequestParam(required=true) Integer newNum,
			HttpServletRequest request) {
		
		String cookieValue = CookieUtils.getCookieValue(request, CLIENT_COOKIE_TOKEN_KEY);
		ScdReturn result = customerLoginService.getCustomerByToken(cookieValue);
		String custId = ((Customer) result.getData()).getCustId();
		
		return cartService.updateCartItemById(custId, itemId, newNum);
		
	}
}









