package org.lanqiao.mapper;

import org.lanqiao.entity.Vovage;

import java.util.List;

public interface VovageMapper {
    int deleteByPrimaryKey(Integer vovageId);

    int insert(Vovage record);

    int insertSelective(Vovage record);

    Vovage selectByPrimaryKey(Integer vovageId);

    int updateByPrimaryKeySelective(Vovage record);

    int updateByPrimaryKey(Vovage record);

    List<Vovage> getAll();
}