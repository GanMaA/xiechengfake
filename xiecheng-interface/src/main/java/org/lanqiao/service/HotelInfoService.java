package org.lanqiao.service;

import com.github.pagehelper.PageInfo;
import org.lanqiao.entity.*;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface HotelInfoService {
//    public HotelInfo selectByPrimaryKey(Integer id);

    public List<HotelInfo> selectHotelInfo(String areaName);


//    public List<HotelInfo> slectHotelInfo(String areaName);
    public HotelInfo selectByPrimaryKey();

    public HotelInfo selectByPrimaryKeyHotelInfo(Integer hotelId);

    public List<HotelRoom> selectByHotelId(Integer hotelId,Integer bedId);

    public List<HotelRoom> getAllHotelRoom(Integer hotelId);

    public boolean insertHotelInfo(HotelInfo hotelInfo, HotelArea hotelArea, HotelGroup hotelGroup, HotelIntroduce hotelIntroduce);

    public List<China> getProvince();

    public PageInfo selectByPageNum(int pageNo);

    public boolean updateHotelInfo(HotelInfo hotelInfo, HotelArea hotelArea, HotelGroup hotelGroup,HotelIntroduce hotelIntroduce);

    public boolean insertHotelRoom(HotelRoom hotelRoom);

    public boolean delHotelRoom(int hotelRoomId);

    public boolean insertHotelPic(HotelPic hotelPic);

    public List<HotelPic> getHotelPic(int hotelId);
}
