package org.lanqiao.controller;

import org.lanqiao.entity.HotelInfo;
import org.lanqiao.service.HotelInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HotelInfoController {
    @Autowired
    HotelInfoService hotelInfoService;

    @ResponseBody
    @RequestMapping("/get")
    public HotelInfo selectByPrimaryKey(){
        return hotelInfoService.selectByPrimaryKey();
    }
}
