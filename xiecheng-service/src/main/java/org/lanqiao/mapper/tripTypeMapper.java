package org.lanqiao.mapper;

import org.lanqiao.entity.tripType;

public interface tripTypeMapper {
    int deleteByPrimaryKey(Integer journeyTypeId);

    int insert(tripType record);

    int insertSelective(tripType record);

    tripType selectByPrimaryKey(Integer journeyTypeId);

    int updateByPrimaryKeySelective(tripType record);

    int updateByPrimaryKey(tripType record);
}