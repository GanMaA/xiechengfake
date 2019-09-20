package org.lanqiao.service;

import org.lanqiao.entity.HotelOrder;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface HotelOrderService  {
    public HotelOrder selectByFkey(Integer orderId);
}
