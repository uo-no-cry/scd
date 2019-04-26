package cn.edu.scau.scd.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.scau.scd.biz.ItemService;
import cn.edu.scau.scd.po.BootstrapTableData;
import cn.edu.scau.scd.po.Item;
import cn.edu.scau.scd.po.ScdReturn;
import cn.edu.scau.scd.utils.IDUtils;
import cn.edu.scau.scd.utils.UpLoadUtil;

@Controller
public class ItemController {

	@Autowired
	private ItemService itemService;

	@RequestMapping(method = RequestMethod.POST, value = "/admin/saveItem.action")
	public void saveItem(@RequestParam("item_imgs") MultipartFile[] item_imgs, Item item, HttpServletResponse response)
			throws Exception {
		// System.out.println("save item ......");

		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();

		List<String> savePaths = new ArrayList<String>();
		
		if (item_imgs[0].getSize() != 0) {
			// 保存到新位置
			for (MultipartFile item_img : item_imgs) {
				String oriName = item_img.getOriginalFilename();
				String uuidFileName = UpLoadUtil.getUuidFileName(oriName);
				String path = UpLoadUtil.getPath(uuidFileName);
				File dir = new File("C:/imgs" + path);
				if (!dir.exists()) {
					dir.mkdirs();
				}
				File destFile = new File("C:/imgs" + path + "/" + uuidFileName);
				item_img.transferTo(destFile);
				savePaths.add("/imgs" + path + "/" + uuidFileName);
			}
		}

		// 图片路径更改
		String finalPathString = "";
		for (int i = 0; i < savePaths.size(); i++) {
			if (i == savePaths.size() - 1) {
				finalPathString += savePaths.get(i);
			} else {
				finalPathString += savePaths.get(i) + ",";
			}
		}

		item.setItemImgs(finalPathString);
		// System.out.println("保存后的cms的picPath: " + cms.getCmsPic());

		// 生成商品id
		item.setItemId(Long.toString(IDUtils.genItemId()));
		System.out.println(item);

		// 其他信息的保存
		try {
			itemService.addItem(item);
			writer.write("<script type=\'text/javascript\'>" + "window.alert('添加成功');" + "window.location.href="
					+ "\"/admin/product-manage\"" + "</script>");
		} catch (Exception e) {
			e.printStackTrace();
			writer.write("<script type=\'text/javascript\'>window.alert('添加失败')</script>");
		}

		writer.close();

	}

	@RequestMapping(path = "/admin/itemList.action")
	@ResponseBody
	public BootstrapTableData getItemList(@RequestParam(defaultValue = "0") int offset,
			@RequestParam(defaultValue = "10") int limit) {
		BootstrapTableData bootstrapTableData = itemService.getItemList(offset, limit);
		return bootstrapTableData;
	}

	@RequestMapping(path = "/admin/deleteItem.action")
	@ResponseBody
	public boolean deleteItem(String itemId) {
		try {
			itemService.deleteItemById(itemId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@RequestMapping(path = "/admin/getItemById.action")
	@ResponseBody
	public ScdReturn getItemById(String itemId) {
		Item item = itemService.getItemById(itemId);
		if (null == item) {
			return ScdReturn.build(400, "无此id商品");
		}
		return ScdReturn.build(200, "请求成功", item);
	}

	@RequestMapping(method = RequestMethod.POST, path = "admin/updateItem.action")
	public void updateItem(@RequestParam("item_imgs") MultipartFile[] item_imgs, Item item,
			HttpServletResponse response) throws Exception {
		// System.out.println("update item ......");

		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();

		// 图片更新
		if (item_imgs[0].getSize() > 0) {
			Item oldItem = itemService.getItemById(item.getItemId());

			// 删除原来图片
			if (null != oldItem) {
				if (null != oldItem.getItemImgs() && oldItem.getItemImgs().length() > 0) {
					String imgsPath = oldItem.getItemImgs();
					String[] imgArr = imgsPath.split(",");
					for (String path : imgArr) {
						path = ("C:" + path).replaceAll("/", "//");
						File file = new File(path);
						file.delete();
					}
				}
			}

			// 保存新图片
			List<String> savePaths = new ArrayList<String>();

			for (MultipartFile item_img : item_imgs) {
				String oriName = item_img.getOriginalFilename();
				String uuidFileName = UpLoadUtil.getUuidFileName(oriName);
				String path = UpLoadUtil.getPath(uuidFileName);
				File dir = new File("C:/imgs" + path);
				if (!dir.exists()) {
					dir.mkdirs();
				}
				File destFile = new File("C:/imgs" + path + "/" + uuidFileName);
				item_img.transferTo(destFile);
				savePaths.add("/imgs" + path + "/" + uuidFileName);
			}

			// 图片路径更改
			String finalPathString = "";
			for (int i = 0; i < savePaths.size(); i++) {
				if (i == savePaths.size() - 1) {
					finalPathString += savePaths.get(i);
				} else {
					finalPathString += savePaths.get(i) + ",";
				}
			}
			item.setItemImgs(finalPathString);
		}
		
		// 保存
		try {
			itemService.updateItem(item);
			writer.write("<script type=\'text/javascript\'>" + "window.alert('修改成功');" + "window.location.href="
					+ "\"/admin/product-manage\"" + "</script>");
		} catch (Exception e) {
			e.printStackTrace();
			writer.write("<script type=\'text/javascript\'>window.alert('修改失败')</script>");
		}

		writer.close();
	}
	
	@RequestMapping(path="/admin/search.action")
	@ResponseBody
	public ScdReturn search (Item searchItem) {
		List<Item> itemList = itemService.search(searchItem);
		if (itemList.size() > 0) {
			BootstrapTableData bootstrapTableData = new BootstrapTableData();
			bootstrapTableData.setTotal(itemList.size());
			bootstrapTableData.setRows(itemList);
			return ScdReturn.build(200, "查询成功", bootstrapTableData);
		} else {
			return ScdReturn.build(400, "查询失败");
		}
	}
}









