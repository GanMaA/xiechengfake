package org.lanqiao.controller;

import org.lanqiao.service.JourneyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JourneyController {
    @Autowired
    JourneyService journeyService;
    @RequestMapping("/get")
    public String gets(){
        return "journey_index";
    }
}
