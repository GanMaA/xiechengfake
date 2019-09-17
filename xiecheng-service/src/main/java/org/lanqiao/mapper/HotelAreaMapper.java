package org.lanqiao.mapper;

import org.lanqiao.entity.HotelArea;

public interface HotelAreaMapper {
    int deleteByPrimaryKey(Integer hotelAreaId);

    int insert(HotelArea record);

    int insertSelective(HotelArea record);

    HotelArea selectByPrimaryKey(Integer hotelAreaId);

    int updateByPrimaryKeySelective(HotelArea record);

    int updateByPrimaryKey(HotelArea record);

}