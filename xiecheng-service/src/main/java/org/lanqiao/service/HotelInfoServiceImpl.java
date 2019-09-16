package org.lanqiao.service;

import org.lanqiao.entity.HotelInfo;
import org.lanqiao.entity.HotelRoom;
import org.lanqiao.mapper.HotelInfoMapper;
import org.lanqiao.mapper.HotelRoomMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

@Service
public class HotelInfoServiceImpl implements HotelInfoService, Serializable {
    @Autowired
    HotelInfoMapper hotelInfoMapper;
    @Autowired
    HotelRoomMapper hotelRoomMapper;

    @Override
    public HotelInfo selectByPrimaryKey() {
        HotelInfo hotelInfo = hotelInfoMapper.selectByPrimaryKey(1);
        return hotelInfo;
    }

    public HotelInfo selectByPrimaryKeyHotelInfo(Integer hotelId) {
        return hotelInfoMapper.selectByPrimaryKeyHotelInfo(hotelId);
    }

    public List<HotelRoom> selectByHotelId(Integer hotelId, Integer bedId) {
        return hotelRoomMapper.selectByHotelId(hotelId,bedId);
    }
}
