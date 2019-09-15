package org.lanqiao.controller;

import org.lanqiao.entity.Vovage;
import org.lanqiao.mapper.VovageMapper;
import org.lanqiao.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        Date date=new Date();
        vovage.setTicketDate(date);
        List<Vovage> vovageList=ticketService.selectAll(vovage);
        model.addAttribute("vovageList",vovageList);
        return "flightticket";
    }
}
