package cn.edu.scau.scd.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.scd.biz.CMS;
import cn.edu.scau.scd.mapper.CmsMapper;
import cn.edu.scau.scd.po.Cms;
import cn.edu.scau.scd.po.CmsExample;
import cn.edu.scau.scd.po.CmsExample.Criteria;

@Service
public class CMSImpl implements CMS {

	@Autowired
	private CmsMapper cmsMapper;

	@Override
	public boolean updateContent(Cms cms) {
		try {
			if (null != cms && null != cms.getCmsCatId()) {
				CmsExample example = new CmsExample();
				Criteria criteria = example.createCriteria();
				criteria.andCmsCatIdEqualTo(cms.getCmsCatId());
				List<Cms> targetElements = cmsMapper.selectByExample(example);
				if (targetElements.size() != 0) {
					cms.setCmsId(targetElements.get(0).getCmsId());
					cmsMapper.updateByPrimaryKeySelective(cms);
					return true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean isContained(String cmsCatId) {
		CmsExample example = new CmsExample();
		Criteria criteria = example.createCriteria();
		criteria.andCmsCatIdEqualTo(cmsCatId);
		List<Cms> list = cmsMapper.selectByExample(example);
		if (list.size() > 0) {
			return true;
		}
		
		return false;
	}

	@Override
	public List<Cms> getHomePageContent() {
		CmsExample example = new CmsExample();
		List<Cms> list = cmsMapper.selectByExample(example);
		return list;
	}

	@Override
	public String getOldPicPath(String cmsCatId) {
		CmsExample example = new CmsExample();
		Criteria criteria = example.createCriteria();
		criteria.andCmsCatIdEqualTo(cmsCatId);
		List<Cms> list = cmsMapper.selectByExample(example);
		if (list.size() > 0) {
			return list.get(0).getCmsPic();
		}
		
		return null;
	}

	@Override
	public List<Cms> getHomePageNewProduct() {
		CmsExample example = new CmsExample();
		Criteria criteria = example.createCriteria();
		criteria.andCmsCatIdLike("10%");
		List<Cms> contentList = cmsMapper.selectByExample(example);
		
		return contentList;
	}
	
	
}
