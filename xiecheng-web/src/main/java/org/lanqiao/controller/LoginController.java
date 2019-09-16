package org.lanqiao.controller;

import org.lanqiao.entity.Login;
import org.lanqiao.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class LoginController {
    @Autowired
    LoginService loginService;

    @ResponseBody
    @RequestMapping(value = "insert" ,produces = "application/json;charset=UTF-8",method = RequestMethod.POST)
    public boolean insertUser(Login login){
        boolean s=loginService.insertUser(login);
        System.out.println(s);
        return s;
    }
}
