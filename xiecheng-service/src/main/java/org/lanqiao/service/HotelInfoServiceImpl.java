package org.lanqiao.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.lanqiao.entity.*;
import org.lanqiao.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Service
public class HotelInfoServiceImpl implements HotelInfoService, Serializable {
    @Autowired
    HotelInfoMapper hotelInfoMapper;
    @Autowired
    HotelRoomMapper hotelRoomMapper;
    @Autowired
    HotelAreaMapper hotelAreaMapper;
    @Autowired
    HotelGroupMapper hotelGroupMapper;
    @Autowired
    ChinaMapper chinaMapper;
    @Autowired
    HotelIntroduceMapper hotelIntroduceMapper;
    @Override
    public List<HotelInfo> selectHotelInfo( String areaName) {

        List<HotelInfo> hotelInfoList = hotelInfoMapper.selectHotelInfo(areaName);
        return hotelInfoList;



//        return hotelInfoMapper.selectHotelInfo(areaName);
    }

    @Override
    public HotelInfo selectByPrimaryKey() {
        HotelInfo hotelInfo = hotelInfoMapper.selectByPrimaryKey(1);
        return null;
    }

    public HotelInfo selectByPrimaryKeyHotelInfo(Integer hotelId) {
        return hotelInfoMapper.selectByPrimaryKeyHotelInfo(hotelId);
    }

    public List<HotelRoom> selectByHotelId(Integer hotelId, Integer bedId) {
        return hotelRoomMapper.selectByHotelId(hotelId,bedId);
    }

    public List<HotelRoom> getAllHotelRoom(Integer hotelId) {
        return hotelRoomMapper.getAllHotelRoom(hotelId);
    }

    //    添加酒店
    @Transactional
    public boolean insertHotelInfo(HotelInfo hotelInfo, HotelArea hotelArea, HotelGroup hotelGroup,HotelIntroduce hotelIntroduce) {
        HotelGroup hotelGroup1 = hotelGroupMapper.selectByGroupName(hotelGroup.getGroupName());
        if (hotelGroup1==null){
            hotelGroupMapper.insertSelective(hotelGroup);
            hotelInfo.setHotelGroupId(hotelGroup.getHotelGroupId());
        }else{
            hotelInfo.setHotelGroupId(hotelGroup1.getHotelGroupId());
        }
        hotelInfoMapper.insertSelective(hotelInfo);
        hotelArea.setHotelId(hotelInfo.getHotelId());
        hotelIntroduce.setHotelId(hotelInfo.getHotelId());
        hotelIntroduceMapper.insertSelective(hotelIntroduce);
        int res = hotelAreaMapper.insertSelective(hotelArea);
        return res>0;
    }
    //    获取省份
    public List<China> getProvince() {
        return chinaMapper.getProvince();
    }

    //    酒店分页
    public PageInfo selectByPageNum(int pageNo) {
        PageHelper.startPage(pageNo, 10);
        //查询
        List<HotelInfo> hotelInfoList = hotelInfoMapper.selectAll();
        //创建PageInfo对象，保存查询出的结果，PageInfo是pageHelper中的对象
        PageInfo<HotelInfo> pageInfo=new PageInfo<HotelInfo>(hotelInfoList);
        return pageInfo;
    }
    @Transactional
    public boolean updateHotelInfo(HotelInfo hotelInfo, HotelArea hotelArea, HotelGroup hotelGroup, HotelIntroduce hotelIntroduce) {
//        China china = chinaMapper.selectByAreaName(hotelArea.getChina().getAreaName());
//        hotelArea.setAreaId(china.getAreaId());
//        hotelInfo.setAreaId(china.getAreaId());
        if(hotelGroupMapper.selectByGroupName(hotelGroup.getGroupName())==null){
            hotelGroupMapper.insertSelective(hotelGroup);
            hotelInfo.setHotelGroupId(hotelGroup.getHotelGroupId());
        }else hotelGroupMapper.updateByPrimaryKeySelective(hotelGroup);
        hotelAreaMapper.updateByPrimaryKeySelective(hotelArea);
        if(hotelIntroduceMapper.selectByHotelId(hotelIntroduce.getHotelId())>0) hotelIntroduceMapper.updateByHotelIdSelective(hotelIntroduce);
        else hotelIntroduceMapper.insertSelective(hotelIntroduce);
        hotelInfoMapper.updateByPrimaryKeySelective(hotelInfo);
        return true;
    }

    @Transactional
    public boolean insertHotelRoom(HotelRoom hotelRoom) {
        if(hotelRoomMapper.insertSelective(hotelRoom)>0){
            BedKind bedKind = new BedKind();
            bedKind.setBedId(hotelRoom.getBedId());
            hotelRoom.setBedKind(bedKind);
            BigDecimal hotelMinPrice = hotelRoomMapper.getMinRoomPrice(hotelRoom.getHotelId());
            HotelInfo hotelInfo = new HotelInfo();
            hotelInfo.setHotelId(hotelRoom.getHotelId());
            hotelInfo.setHotelMinPrice(hotelMinPrice);
            hotelInfoMapper.updateByPrimaryKeySelective(hotelInfo);
            return true;
        }else
            return false;
    }

    @Override
    public boolean delHotelRoom(int hotelRoomId) {
        return hotelRoomMapper.deleteByPrimaryKey(hotelRoomId)>0;
    }

}
