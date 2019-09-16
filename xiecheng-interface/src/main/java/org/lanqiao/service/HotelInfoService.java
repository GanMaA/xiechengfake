package org.lanqiao.service;

import org.lanqiao.entity.HotelInfo;
import org.lanqiao.entity.HotelRoom;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface HotelInfoService {
    public HotelInfo selectByPrimaryKey();

    public HotelInfo selectByPrimaryKeyHotelInfo(Integer hotelId);

    public List<HotelRoom> selectByHotelId(Integer hotelId,Integer bedId);
}
