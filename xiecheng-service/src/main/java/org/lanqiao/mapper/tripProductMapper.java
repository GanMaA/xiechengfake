package org.lanqiao.mapper;

import org.lanqiao.entity.tripProduct;

public interface tripProductMapper {
    int deleteByPrimaryKey(Integer journeyProductId);

    int insert(tripProduct record);

    int insertSelective(tripProduct record);

    tripProduct selectByPrimaryKey(Integer journeyProductId);

    int updateByPrimaryKeySelective(tripProduct record);

    int updateByPrimaryKey(tripProduct record);
}