package org.lanqiao.controller;

import org.lanqiao.entity.HotelInfo;
import org.lanqiao.entity.HotelRoom;
import org.lanqiao.service.HotelInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class HotelInfoController {
    @Autowired
    HotelInfoService hotelInfoService;

    @ResponseBody
    @RequestMapping("/get")
    public HotelInfo selectByPrimaryKey(){
        return hotelInfoService.selectByPrimaryKey();
    }

    @RequestMapping("/getHotelInfo")
    public String selectByPrimaryKeyHotelInfo(Integer HotelId, Model model){
        HotelInfo hotelInfo = hotelInfoService.selectByPrimaryKeyHotelInfo(HotelId);
        List<HotelRoom> hotelRoomsOne = hotelInfoService.selectByHotelId(HotelId,1);
        List<HotelRoom> hotelRoomsTwo = hotelInfoService.selectByHotelId(HotelId,2);
        List<HotelRoom> hotelRoomsThree = hotelInfoService.selectByHotelId(HotelId,3);
        model.addAttribute("hotelInfo",hotelInfo);
        model.addAttribute("HotelRoomsOne",hotelRoomsOne);
        model.addAttribute("HotelRoomsTwo",hotelRoomsTwo);
        model.addAttribute("HotelRoomsThree",hotelRoomsThree);
        return "HotelDetail" ;
    }
}
