package org.lanqiao.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
    public List<HotelInfo> selectHotelInfo( String areaName) {

        List<HotelInfo> hotelInfoList = hotelInfoMapper.selectHotelInfo(areaName);
        return hotelInfoList;



//        return hotelInfoMapper.selectHotelInfo(areaName);
    }

    @Override
    public HotelInfo selectByPrimaryKey() {
        return null;
    }

    public HotelInfo selectByPrimaryKeyHotelInfo(Integer hotelId) {
        return hotelInfoMapper.selectByPrimaryKeyHotelInfo(hotelId);
    }

    public List<HotelRoom> selectByHotelId(Integer hotelId, Integer bedId) {
        return hotelRoomMapper.selectByHotelId(hotelId,bedId);
    }
}
