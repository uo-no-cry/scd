package cn.edu.scau.scd.biz.impl;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.edu.scau.scd.biz.ItemService;
import cn.edu.scau.scd.mapper.ItemMapper;
import cn.edu.scau.scd.po.AdminExample.Criterion;
import cn.edu.scau.scd.po.BootstrapTableData;
import cn.edu.scau.scd.po.Item;
import cn.edu.scau.scd.po.ItemExample;
import cn.edu.scau.scd.po.ItemExample.Criteria;

@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemMapper itemMapper;

	@Override
	public Item getItemById(String itemId) {
		return itemMapper.selectByPrimaryKey(itemId);
	}

	@Override
	public void deleteItemById(String itemId) {
		// 删除图片
		Item item = itemMapper.selectByPrimaryKey(itemId);
		if (null == item)
			return;
		String imgsPath = item.getItemImgs();
		if (null != imgsPath && !"".equals(imgsPath)) {
			// 删除以前位置的图片
			String[] imgArr = imgsPath.split(",");
			for (String path : imgArr) {
				path = ("C:" + path).replaceAll("/", "//");
				File file = new File(path);
				file.delete();
			}
		}

		itemMapper.deleteByPrimaryKey(itemId);
	}

	@Override
	public void addItem(Item item) {
		itemMapper.insertSelective(item);
	}

	@Override
	public void updateItem(Item item) {
		itemMapper.updateByPrimaryKeyWithBLOBs(item);
	}

	@Override
	public BootstrapTableData getItemList(int offset, int limit) {
		// PageHelper.startPage(page, rows);
		PageHelper.offsetPage(offset, limit);
		ItemExample itemExample = new ItemExample();
		List<Item> list = itemMapper.selectByExampleWithBLOBs(itemExample);
		PageInfo<Item> pageInfo = new PageInfo<>(list);

		BootstrapTableData bootstrapTableData = new BootstrapTableData();
		bootstrapTableData.setTotal(pageInfo.getTotal());
		bootstrapTableData.setRows(list);
		return bootstrapTableData;
	}
	
	@Override
	public List<Item> search (Item searchItem) {
		ItemExample example = new ItemExample();
		Criteria criteria = example.createCriteria();
		if (null != searchItem.getItemName() && searchItem.getItemName().trim().length() > 0) {
			criteria.andItemNameLike("%" + searchItem.getItemName() + "%");
		}
		if (null != searchItem.getItemCatName() && searchItem.getItemCatName().trim().length() > 0) {
			criteria.andItemCatNameLike("%" + searchItem.getItemCatName() + "%");
		}
		return itemMapper.selectByExample(example);
	}
	
	@Override
	public BootstrapTableData shopSearch (Item searchItem, int offset, int limit) {
		ItemExample example = new ItemExample();
		ItemExample example2 = new ItemExample();
		Criteria criteria1 = example.createCriteria();
		Criteria criteria2 = example2.createCriteria();
		if (null != searchItem.getItemName() && searchItem.getItemName().trim().length() > 0) {
			criteria1.andItemNameLike("%" + searchItem.getItemName() + "%");
			criteria2.andItemCatNameLike("%" + searchItem.getItemName() + "%");
		}
		// 按商品名称匹配查询
		PageHelper.offsetPage(offset, limit);
		List<Item> list1 = itemMapper.selectByExample(example);
		// 按商品分类匹配查询
		PageHelper.offsetPage(offset, limit);
		List<Item> list2 = itemMapper.selectByExample(example2);
		// 合并list2 到 list1
		for (Item list2Item : list2) {
			if (!contain(list1, list2Item)) {
				list1.add(list2Item);
			}
		}
		
		
		PageInfo<Item> pageInfo = new PageInfo<>(list1);
		
		BootstrapTableData bootstrapTableData = new BootstrapTableData();
		bootstrapTableData.setTotal(pageInfo.getTotal());
		bootstrapTableData.setRows(list1);
		return bootstrapTableData;
	}
	
	private boolean contain (List<Item> list1, Item item) {
		boolean flag = false;
		for (Item list1Item : list1) {
			if (list1Item.getItemId().equals(item.getItemId())) {
				flag = true;
				break;
			}
		}
		return flag;
	}
}
