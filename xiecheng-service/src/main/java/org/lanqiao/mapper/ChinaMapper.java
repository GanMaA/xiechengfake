package org.lanqiao.mapper;

import org.lanqiao.entity.China;
import org.lanqiao.entity.HotelInfo;

import java.util.List;

public interface ChinaMapper {
    int deleteByPrimaryKey(Integer areaId);

    int insert(China record);

    int insertSelective(China record);

    China selectByPrimaryKey(Integer areaId);

    int updateByPrimaryKeySelective(China record);

    int updateByPrimaryKey(China record);

    List<China> getProvince();

    China selectByAreaName(String areaName);

//根据地址表中的地址名称和酒店信息表中的地址表id查询该城市的所有酒店
    List<HotelInfo> selectHotelInfo(String areaName);
}