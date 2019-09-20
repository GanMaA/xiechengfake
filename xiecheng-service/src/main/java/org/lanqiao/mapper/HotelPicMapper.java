package org.lanqiao.mapper;

import org.lanqiao.entity.HotelPic;

import java.util.List;

public interface HotelPicMapper {
    int deleteByPrimaryKey(Integer hotelPicId);

    int insert(HotelPic record);

    int insertSelective(HotelPic record);

    HotelPic selectByPrimaryKey(Integer hotelPicId);

    int updateByPrimaryKeySelective(HotelPic record);

    int updateByPrimaryKey(HotelPic record);

    List<HotelPic> getAllPicByHotelId(int hotelId);
}