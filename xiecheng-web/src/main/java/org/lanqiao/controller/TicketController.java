package org.lanqiao.controller;

import org.lanqiao.entity.Vovage;
import org.lanqiao.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
//@RequestMapping("/tcl")
public class TicketController {
    @Autowired
    TicketService ticketService;

//    @ResponseBody
//    @RequestMapping("/getAllVovage")
//    public List<Vovage> getAllVovage(){
//        List<Vovage> vovageList=ticketService.selectAll(Vovage void);
//        return vovageList;
//    }

    @RequestMapping("/showTicket")
    public String showTicket(Vovage vovage, HttpServletRequest request,Model model){
        List<Vovage> vovageList=ticketService.selectAll(vovage);
        model.addAttribute("vovageList",vovageList);
        model.addAttribute("vovage",vovage);
        int price=0;
        int temp=0;
        for (Vovage vovage1: vovageList) {
            temp=vovage1.getPrice();
            if(price==0){
                price=temp;
            }
            if (price>temp)
                price=temp;
        }
        model.addAttribute("price",price);
        return "flightticket";
    }
    @RequestMapping("/getMinPrice")
    public int getMinPrice(Vovage vovage){
        return 1;
    }
}
