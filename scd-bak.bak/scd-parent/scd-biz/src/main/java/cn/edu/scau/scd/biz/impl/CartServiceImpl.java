package cn.edu.scau.scd.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.scd.biz.CartService;
import cn.edu.scau.scd.mapper.CartItemMapper;
import cn.edu.scau.scd.po.CartItem;
import cn.edu.scau.scd.po.CartItemExample;
import cn.edu.scau.scd.po.CartItemExample.Criteria;
import cn.edu.scau.scd.po.ScdReturn;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartItemMapper cartItemMapper;

	@Override
	public ScdReturn addItemToCart(String custId, String itemId, Integer itemNum) {
		CartItemExample example = new CartItemExample();
		Criteria criteria = example.createCriteria();
		criteria.andCustIdEqualTo(custId);
		criteria.andItemIdEqualTo(itemId);
		List<CartItem> list = cartItemMapper.selectByExample(example);

		// 尚未加入过
		if (list.size() == 0) {
			CartItem cartItem = new CartItem();
			cartItem.setCustId(custId);
			cartItem.setItemId(itemId);
			cartItem.setItemNum(itemNum);

			cartItemMapper.insertSelective(cartItem);
			return ScdReturn.ok();
		}

		// 以前加入过
		CartItem oldCartItem = list.get(0);
		oldCartItem.setItemNum(oldCartItem.getItemNum() + itemNum);
		cartItemMapper.updateByPrimaryKeySelective(oldCartItem);

		return ScdReturn.ok();
	}

	@Override
	public List<CartItem> getCartListByCustId(String custId) {
		CartItemExample example = new CartItemExample();
		Criteria criteria = example.createCriteria();
		criteria.andCustIdEqualTo(custId);
		return cartItemMapper.selectByExample(example);
	}

	@Override
	public ScdReturn deleteCartItemById(String custId, String itemId) {
		try {
		CartItemExample example = new CartItemExample();
		Criteria criteria = example.createCriteria();
		criteria.andCustIdEqualTo(custId);
		criteria.andItemIdEqualTo(itemId);
		int deletedNum = cartItemMapper.deleteByExample(example);
		if (deletedNum <= 0) {
			return ScdReturn.build(400, "删除失败了耶~~~");
		}
		} catch (Exception e) {
			e.printStackTrace();
			return ScdReturn.build(400, "删除失败了~~~");
		}
		return ScdReturn.ok();
	}

	@Override
	public ScdReturn updateCartItemById(String custId, String itemId, Integer newNum) {
		try {
			CartItemExample example = new CartItemExample();
			Criteria criteria = example.createCriteria();
			criteria.andCustIdEqualTo(custId);
			criteria.andItemIdEqualTo(itemId);
			List<CartItem> list = cartItemMapper.selectByExample(example);
			if (list.size() == 0) {
				return ScdReturn.build(400, "找不到要更新得商品");
			}
			
			CartItem item = list.get(0);
			item.setItemNum(newNum);
			
			cartItemMapper.updateByPrimaryKey(item);
			return ScdReturn.ok();
		} catch (Exception e) {
			e.printStackTrace();
			return ScdReturn.build(500, "服务器出错了...");
		}
	}

}
