package org.lanqiao.mapper;

import org.lanqiao.entity.HotelGroup;

public interface HotelGroupMapper {
    int deleteByPrimaryKey(Integer hotelGroupId);

    int insert(HotelGroup record);

    int insertSelective(HotelGroup record);

    HotelGroup selectByPrimaryKey(Integer hotelGroupId);

    int updateByPrimaryKeySelective(HotelGroup record);

    int updateByPrimaryKey(HotelGroup record);

    HotelGroup selectByGroupName(String groupName);
}