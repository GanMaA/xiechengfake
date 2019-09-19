package org.lanqiao.controller;

import org.lanqiao.entity.HotelInfo;
import org.lanqiao.entity.HotelRoom;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HotelInputController {
    @RequestMapping("/inputInfo")
    public String showTicket(HotelRoom hotelRoom, HttpServletRequest request, Model model){
        model.addAttribute("hotelRoom",hotelRoom);
        return "hotel_orderInput";
    }

    @RequestMapping("/inputHotel")
    public String inputHotel(HotelInfo hotelInfo, HttpServletRequest request, Model model){
        model.addAttribute("hotelInfo",hotelInfo);
        return "hotel_orderInput";
    }
}


