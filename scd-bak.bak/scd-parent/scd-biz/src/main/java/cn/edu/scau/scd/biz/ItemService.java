package cn.edu.scau.scd.biz;

import java.util.List;

import cn.edu.scau.scd.po.BootstrapTableData;
import cn.edu.scau.scd.po.Item;

public interface ItemService {
	Item getItemById(String itemId);
	
	BootstrapTableData getItemList (int offset, int limit);
	
	void deleteItemById(String itemId);
	
	void addItem(Item item);
	
	void updateItem(Item item);

	List<Item> search(Item searchItem);

	BootstrapTableData shopSearch(Item searchItem, int offset, int limit);
}
