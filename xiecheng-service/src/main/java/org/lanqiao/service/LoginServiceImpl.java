package org.lanqiao.service;

import org.lanqiao.entity.Login;
import org.lanqiao.mapper.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService{
    @Autowired
    LoginMapper loginMapper;

    @Override
    public boolean insertUser(Login login) {
        int status=loginMapper.insertSelective(login);
        return status>0?true:false;
    }
}
