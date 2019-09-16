package org.lanqiao.mapper;

import org.lanqiao.entity.tripTheme;

public interface tripThemeMapper {
    int deleteByPrimaryKey(Integer journeyThemeId);

    int insert(tripTheme record);

    int insertSelective(tripTheme record);

    tripTheme selectByPrimaryKey(Integer journeyThemeId);

    int updateByPrimaryKeySelective(tripTheme record);

    int updateByPrimaryKey(tripTheme record);
}