package org.lanqiao.controller;

import org.lanqiao.entity.HotelOrder;
import org.lanqiao.service.HotelOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HotelOrderController {
    @Autowired
    HotelOrderService hotelOrderService;
    @RequestMapping("/get")
    public String selectByFkey(Integer orderId, Model model) {
        HotelOrder hotelOrder = hotelOrderService.selectByFkey(1);
        model.addAttribute("hotelOrder",hotelOrder);
        return "hotel_order_pay";
    }
}


