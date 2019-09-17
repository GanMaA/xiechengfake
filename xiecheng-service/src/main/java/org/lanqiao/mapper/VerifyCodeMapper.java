package org.lanqiao.mapper;

import org.lanqiao.entity.VerifyCode;

public interface VerifyCodeMapper {
    int deleteByPrimaryKey(Integer codeId);

    int insert(VerifyCode record);

    int insertSelective(VerifyCode record);

    VerifyCode selectByPrimaryKey(Integer codeId);

    int updateByPrimaryKeySelective(VerifyCode record);

    int updateByPrimaryKey(VerifyCode record);
}