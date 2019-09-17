package org.lanqiao.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.lanqiao.entity.HotelInfo;
import org.lanqiao.mapper.HotelInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

@Service
public class HotelInfoServiceImpl implements HotelInfoService, Serializable {
    @Autowired
    HotelInfoMapper hotelInfoMapper;

    @Override
    public List<HotelInfo> selectHotelInfo( String areaName) {

        List<HotelInfo> hotelInfoList = hotelInfoMapper.selectHotelInfo(areaName);
        return hotelInfoList;



//        return hotelInfoMapper.selectHotelInfo(areaName);
    }
}
