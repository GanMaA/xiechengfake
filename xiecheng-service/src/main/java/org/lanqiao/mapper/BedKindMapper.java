package org.lanqiao.mapper;

import org.lanqiao.entity.BedKind;

public interface BedKindMapper {
    int deleteByPrimaryKey(Integer bedId);

    int insert(BedKind record);

    int insertSelective(BedKind record);

    BedKind selectByPrimaryKey(Integer bedId);

    int updateByPrimaryKeySelective(BedKind record);

    int updateByPrimaryKey(BedKind record);
}