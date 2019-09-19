package org.lanqiao.mapper;

import org.lanqiao.entity.HotelRoom;

import java.math.BigDecimal;
import java.util.List;

public interface HotelRoomMapper {
    int deleteByPrimaryKey(Integer hotelRoomId);

    int insert(HotelRoom record);

    int insertSelective(HotelRoom record);

    HotelRoom selectByPrimaryKey(Integer hotelRoomId);

    int updateByPrimaryKeySelective(HotelRoom record);

    int updateByPrimaryKey(HotelRoom record);

    List<HotelRoom> selectByHotelId(Integer hotelId,Integer bedId);

    List<HotelRoom> getAllHotelRoom(Integer hotelId);

    BigDecimal getMinRoomPrice(Integer hotelId);

}