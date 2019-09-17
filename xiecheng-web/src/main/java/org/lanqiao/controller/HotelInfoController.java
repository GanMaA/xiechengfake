package org.lanqiao.controller;

import com.github.pagehelper.PageInfo;
import org.lanqiao.entity.HotelInfo;
import org.lanqiao.service.HotelInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class HotelInfoController {

    List<HotelInfo> hotelInfoList;
    @Autowired
    HotelInfoService hotelInfoService;

    @RequestMapping("/getHotelnfo")
    public String selectHotelInfo(String areaName, Model model, HttpServletRequest request){
        String addressName = request.getParameter("addressName");
        if (addressName!=null){
            System.out.println("我四地点"+addressName);
            hotelInfoList = hotelInfoService.selectHotelInfo(addressName);
        }else {
            hotelInfoList = hotelInfoService.selectHotelInfo("上海");
        }

        model.addAttribute("hotelInfoList",hotelInfoList);
        return "hotel_index";
    }
}
