package org.lanqiao.mapper;

import org.lanqiao.entity.HotelInfo;
import org.springframework.stereotype.Repository;

@Repository
public interface HotelInfoMapper {
    int deleteByPrimaryKey(Integer hotelId);

    int insert(HotelInfo record);

    int insertSelective(HotelInfo record);

    HotelInfo selectByPrimaryKey(Integer hotelId);

    int updateByPrimaryKeySelective(HotelInfo record);

    int updateByPrimaryKey(HotelInfo record);
}