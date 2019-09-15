package org.lanqiao.controller;

import org.lanqiao.entity.Vovage;
import org.lanqiao.mapper.VovageMapper;
import org.lanqiao.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/tcl")
public class TicketController {
    @Autowired
    TicketService ticketService;

    @ResponseBody
    @RequestMapping("/getAllVovage")
    public List<Vovage> getAllVovage(){
        List<Vovage> vovageList=ticketService.selectAll();
        return vovageList;
    }
    @ResponseBody
    @RequestMapping("/showTicket")
    public String showTicket(Vovage vovage, HttpServletRequest request){
        return "flightticket";
    }
}
