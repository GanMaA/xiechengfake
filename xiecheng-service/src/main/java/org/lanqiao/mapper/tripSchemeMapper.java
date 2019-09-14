package org.lanqiao.mapper;

import org.lanqiao.entity.tripScheme;

public interface tripSchemeMapper {
    int deleteByPrimaryKey(Integer journeySchemeId);

    int insert(tripScheme record);

    int insertSelective(tripScheme record);

    tripScheme selectByPrimaryKey(Integer journeySchemeId);

    int updateByPrimaryKeySelective(tripScheme record);

    int updateByPrimaryKey(tripScheme record);
}