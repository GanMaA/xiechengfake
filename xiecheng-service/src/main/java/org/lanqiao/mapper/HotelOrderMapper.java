package org.lanqiao.mapper;

import org.lanqiao.entity.HotelOrder;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface HotelOrderMapper {
    int deleteByPrimaryKey(Integer orderId);

    int insert(HotelOrder record);

    int insertSelective(HotelOrder record);

    HotelOrder selectByPrimaryKey(Integer orderId);

    int updateByPrimaryKeySelective(HotelOrder record);

    int updateByPrimaryKey(HotelOrder record);

    //根据登录用户的id查询该用户的所有订单
    HotelOrder selectByFkey(Integer orderId);
}