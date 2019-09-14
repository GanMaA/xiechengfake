package org.lanqiao.service;

import org.lanqiao.entity.HotelInfo;
import org.lanqiao.mapper.HotelInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;

@Service
public class HotelInfoServiceImpl implements HotelInfoService, Serializable {
    @Autowired
    HotelInfoMapper hotelInfoMapper;

    @Override
    public HotelInfo selectByPrimaryKey() {
        HotelInfo hotelInfo = hotelInfoMapper.selectByPrimaryKey(1);
        return hotelInfo;
    }
}
