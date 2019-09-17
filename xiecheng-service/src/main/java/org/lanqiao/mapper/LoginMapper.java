package org.lanqiao.mapper;

import org.lanqiao.entity.Login;
import org.springframework.stereotype.Repository;

@Repository
public interface LoginMapper {
    int deleteByPrimaryKey(Integer loginId);

    int insert(Login record);

    int insertSelective(Login record);

    Login selectByPrimaryKey(Integer loginId);

    int updateByPrimaryKeySelective(Login record);

    int updateByPrimaryKey(Login record);
}