package org.lanqiao.service;

import org.lanqiao.entity.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

public interface LoginService {
    public boolean insertUser(Login login);
}
