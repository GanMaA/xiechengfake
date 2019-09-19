package org.lanqiao.controller;

import com.github.pagehelper.PageInfo;
import org.lanqiao.entity.*;
import org.lanqiao.service.HotelInfoService;
import org.lanqiao.util.FIleUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

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

    @RequestMapping("/insertHotelInfo")
    public String insertHotelInfo(HotelInfo hotelInfo, MultipartFile hotelMainPic, HotelArea hotelArea, HotelGroup hotelGroup,HotelIntroduce hotelIntroduce, HttpServletRequest request,Model model) throws IOException {
        String uri = FIleUpload.doUpload(request,hotelMainPic);
        hotelInfo.setHotelPic(uri);
        boolean flag = hotelInfoService.insertHotelInfo(hotelInfo,hotelArea,hotelGroup,hotelIntroduce);
        String msg = null;
        if (flag) msg="success";
        else msg="false";
        model.addAttribute("msg",msg);
        return "forward:/getAllHotel";
    }

    @ResponseBody
    @RequestMapping("/getProvince")
    public List<China> getProvince(){
        return hotelInfoService.getProvince();
    }

    @RequestMapping("/getAllHotel")
    public String getAllHotel(@RequestParam(value = "pageNo",defaultValue = "1") int pageNo,Model model){
        PageInfo pageInfo =hotelInfoService.selectByPageNum(pageNo);
        model.addAttribute("pageInfo",pageInfo);
        return "xiecheng_management";
    }
    @ResponseBody
    @RequestMapping("/manGetHotelInfo")
    public HotelInfo manGetHotelInfo(int hotelId){
        HotelInfo hotelInfo = hotelInfoService.selectByPrimaryKeyHotelInfo(hotelId);
        return hotelInfo;
    }

    @ResponseBody
    @RequestMapping("/updateHotelInfo")
    public boolean updateHotelInfo(HotelInfo hotelInfo, HotelArea hotelArea, HotelGroup hotelGroup, HotelIntroduce hotelIntroduce){
        return hotelInfoService.updateHotelInfo(hotelInfo,hotelArea,hotelGroup,hotelIntroduce);
    }

    @ResponseBody
    @RequestMapping("/getHotelRoom")
    public List<HotelRoom> getHotelRoom(int hotelId){
        return hotelInfoService.getAllHotelRoom(hotelId);
    }

    @ResponseBody
    @RequestMapping("/insertHotelRoom")
    public HotelRoom insertHotelRoom(HotelRoom hotelRoom, MultipartFile roomPicture, HttpServletRequest request) throws IOException {
        String uri = FIleUpload.doUpload(request,roomPicture);
        hotelRoom.setRoomPic(uri);
        boolean flag = hotelInfoService.insertHotelRoom(hotelRoom);
        if(flag){
            return hotelRoom;
        }else return null;
    }

    @ResponseBody
    @RequestMapping("/delHotelRoom")
    public boolean delHotelRoom(int hotelRoomId){
        return hotelInfoService.delHotelRoom(hotelRoomId);
    }

}
