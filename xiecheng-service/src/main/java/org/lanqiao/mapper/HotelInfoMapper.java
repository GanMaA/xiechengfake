package org.lanqiao.mapper;

import org.lanqiao.entity.HotelInfo;

import java.util.List;

public interface HotelInfoMapper {
    int deleteByPrimaryKey(Integer hotelId);

    int insert(HotelInfo record);

    int insertSelective(HotelInfo record);

    HotelInfo selectByPrimaryKey(Integer hotelId);

    int updateByPrimaryKeySelective(HotelInfo record);

    int updateByPrimaryKey(HotelInfo record);


    //根据地址表中的地址名称和酒店信息表中的地址表id查询该城市的所有酒店
    List<HotelInfo> selectHotelInfo(String areaName);

}