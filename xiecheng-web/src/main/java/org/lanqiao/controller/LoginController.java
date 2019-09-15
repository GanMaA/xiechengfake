package org.lanqiao.controller;

import org.lanqiao.entity.Login;
import org.lanqiao.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {
    @Autowired
    LoginService loginService;

    @ResponseBody
    @RequestMapping("/insert")
    public boolean insertUser(Login login){
        boolean status=loginService.insertUser(login);
        System.out.println(status);
        return status;
    }
}
