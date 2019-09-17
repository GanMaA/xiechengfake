package org.lanqiao.service;

import com.github.pagehelper.PageInfo;
import org.lanqiao.entity.HotelInfo;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface HotelInfoService {
//    public HotelInfo selectByPrimaryKey(Integer id);

    public List<HotelInfo> selectHotelInfo(String areaName);


//    public List<HotelInfo> slectHotelInfo(String areaName);
}
