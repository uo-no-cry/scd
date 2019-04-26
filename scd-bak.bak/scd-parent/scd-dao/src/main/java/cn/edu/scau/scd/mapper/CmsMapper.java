package cn.edu.scau.scd.mapper;

import cn.edu.scau.scd.po.Cms;
import cn.edu.scau.scd.po.CmsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CmsMapper {
    int countByExample(CmsExample example);

    int deleteByExample(CmsExample example);

    int deleteByPrimaryKey(String cmsId);

    int insert(Cms record);

    int insertSelective(Cms record);

    List<Cms> selectByExample(CmsExample example);

    Cms selectByPrimaryKey(String cmsId);

    int updateByExampleSelective(@Param("record") Cms record, @Param("example") CmsExample example);

    int updateByExample(@Param("record") Cms record, @Param("example") CmsExample example);

    int updateByPrimaryKeySelective(Cms record);

    int updateByPrimaryKey(Cms record);
}