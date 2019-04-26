package cn.edu.scau.scd.biz;

import java.util.List;

import cn.edu.scau.scd.po.CartItem;
import cn.edu.scau.scd.po.ScdReturn;

public interface CartService {
	ScdReturn addItemToCart(String custId, String itemId, Integer itemNum);

	List<CartItem> getCartListByCustId(String custId);

	ScdReturn deleteCartItemById(String custId, String itemId);

	ScdReturn updateCartItemById(String custId, String itemId, Integer newNum);
}
