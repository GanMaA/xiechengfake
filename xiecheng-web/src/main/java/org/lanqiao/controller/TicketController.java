package org.lanqiao.controller;

import org.lanqiao.entity.Vovage;
import org.lanqiao.mapper.VovageMapper;
import org.lanqiao.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class TicketController {
    @Autowired
    TicketService ticketService;

    @ResponseBody
    @RequestMapping("/getAllVovage")
    public List<Vovage> getAllVovage(){
        List<Vovage> vovageList=ticketService.selectAll();
        return vovageList;
    }
    @RequestMapping("/showTicket")
    public String showTicket(Vovage vovage, Model model){
        List<Vovage> vovageList=ticketService.selectAll();
        model.addAttribute("vovageList",vovageList);
        return "flightticket";
    }
}
