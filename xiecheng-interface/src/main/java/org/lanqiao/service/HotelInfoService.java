package org.lanqiao.service;

import org.lanqiao.entity.HotelInfo;
import org.springframework.stereotype.Service;

@Service
public interface HotelInfoService {
    public HotelInfo selectByPrimaryKey();
}
