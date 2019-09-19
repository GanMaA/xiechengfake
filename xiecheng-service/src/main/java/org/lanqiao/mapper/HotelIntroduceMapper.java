package org.lanqiao.mapper;

import org.lanqiao.entity.HotelIntroduce;

public interface HotelIntroduceMapper {
    int deleteByPrimaryKey(Integer hotelIntroId);

    int insert(HotelIntroduce record);

    int insertSelective(HotelIntroduce record);

    HotelIntroduce selectByPrimaryKey(Integer hotelIntroId);

    int updateByPrimaryKeySelective(HotelIntroduce record);

    int updateByPrimaryKey(HotelIntroduce record);

    int updateByHotelIdSelective(HotelIntroduce record);

    int selectByHotelId(int HotelId);
}