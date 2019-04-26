package cn.edu.scau.scd.po;

import java.util.ArrayList;
import java.util.List;

public class CartData {
	private Integer itemTotalCost = 0;
	
	private Integer expressCharges = 0;
	
	private Integer total = 0;

	private List<CartItemDetail> cartItemDetailList = new ArrayList<>();
	
	public void addItemDetail (CartItemDetail detail) {
		cartItemDetailList.add(detail);
	}

	public List<CartItemDetail> getCartItemDetailList () {
		return cartItemDetailList;
	}
	
	public Integer getItemTotalCost() {
		return itemTotalCost;
	}

	public void setItemTotalCost(Integer itemTotalCost) {
		this.itemTotalCost = itemTotalCost;
	}

	public Integer getExpressCharges() {
		return expressCharges;
	}

	public void setExpressCharges(Integer expressCharges) {
		this.expressCharges = expressCharges;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}
	
	
}
