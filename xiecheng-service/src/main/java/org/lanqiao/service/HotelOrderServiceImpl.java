package org.lanqiao.service;

import org.lanqiao.entity.HotelOrder;
import org.lanqiao.mapper.HotelOrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class HotelOrderServiceImpl implements HotelOrderService {
    @Autowired
    HotelOrderMapper hotelOrderMapper;
    public HotelOrder selectByFkey(Integer orderId){
        return hotelOrderMapper.selectByFkey(orderId);
    }
}
