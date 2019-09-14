package org.lanqiao.mapper;

import org.lanqiao.entity.tripSpplier;

public interface tripSpplierMapper {
    int deleteByPrimaryKey(Integer supplierId);

    int insert(tripSpplier record);

    int insertSelective(tripSpplier record);

    tripSpplier selectByPrimaryKey(Integer supplierId);

    int updateByPrimaryKeySelective(tripSpplier record);

    int updateByPrimaryKey(tripSpplier record);
}