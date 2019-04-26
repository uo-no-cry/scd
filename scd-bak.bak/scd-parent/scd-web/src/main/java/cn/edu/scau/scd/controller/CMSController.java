package cn.edu.scau.scd.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.scau.scd.biz.CMS;
import cn.edu.scau.scd.po.Cms;
import cn.edu.scau.scd.utils.UpLoadUtil;

@Controller
public class CMSController {

	@Autowired
	private CMS cmsService;

	@RequestMapping("/cms_save.action")
	public void cms_save(@RequestParam("cms_pics") MultipartFile[] cms_pics, Cms cms, HttpServletResponse response)
			throws IOException {
		System.out.println("saving cms:\n " + cms);

		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();

		// 判断要更新的主页内容的区域是否正确或存在
		boolean isValid = cmsService.isContained(cms.getCmsCatId());

		if (!isValid) {
			writer.write("<script type=\'text/javascript\'>window.alert('修改失败')</script>");
			writer.close();
			return;
		}
		String oldPicPath = cmsService.getOldPicPath(cms.getCmsCatId());
		if (null != oldPicPath) {
			cms.setCmsPic(oldPicPath);
		}
		
		// 图片的保存
		if (null != cms.getCmsPic()) {
			// 删除以前位置的图片
			String picPathString = cms.getCmsPic();
			String[] picPaths = picPathString.split(",");
			for (String picPath : picPaths) {
				picPath = ("C:" + picPath).replaceAll("/", "//");
				File file = new File(picPath);
				file.delete();
			}

			// 保存到以前的位置
//			for(MultipartFile cms_pic : cms_pics) {
//				cms_pic.transferTo(new File("C:/imgs" + cms.getCmsPic()));
//			}
		}
		
		List<String> savePaths = new ArrayList<String>();
		
		// 保存到新位置
		for (MultipartFile cms_pic : cms_pics) {
			String oriName = cms_pic.getOriginalFilename();
			String uuidFileName = UpLoadUtil.getUuidFileName(oriName);
			String path = UpLoadUtil.getPath(uuidFileName);
			File dir = new File("C:/imgs" + path);
			if (!dir.exists()) {
				dir.mkdirs();
			}
			File destFile = new File("C:/imgs" + path + "/" + uuidFileName);
			cms_pic.transferTo(destFile);
			savePaths.add("/imgs" + path + "/" + uuidFileName);
		}
		
		// 图片路径更改
		String finalPathString = "";
		for (int i = 0; i < savePaths.size(); i++) {
			if (i == savePaths.size() - 1) {
				finalPathString  += savePaths.get(i);
			} else {
				finalPathString += savePaths.get(i) + ",";
			}
		}
		
		cms.setCmsPic(finalPathString);
		//System.out.println("保存后的cms的picPath: " + cms.getCmsPic());
		
		// url拼接查询商品id
		if (null != cms.getCmsItemId()) {
			cms.setCmsUrl(cms.getCmsUrl() + "?itemId=" + cms.getCmsItemId());
		}
		
		// 其他信息的保存
		boolean success = cmsService.updateContent(cms);

		if (!success) {
			writer.write("<script type=\'text/javascript\'>window.alert('修改失败')</script>");
		} else {
			writer.write("<script type=\'text/javascript\'>window.alert('修改成功')</script>");
		}
		writer.close();
	}
	
	

}
