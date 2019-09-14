package org.lanqiao.mapper;

import org.lanqiao.entity.tripWay;

public interface tripWayMapper {
    int deleteByPrimaryKey(Integer journeyWayId);

    int insert(tripWay record);

    int insertSelective(tripWay record);

    tripWay selectByPrimaryKey(Integer journeyWayId);

    int updateByPrimaryKeySelective(tripWay record);

    int updateByPrimaryKey(tripWay record);
}