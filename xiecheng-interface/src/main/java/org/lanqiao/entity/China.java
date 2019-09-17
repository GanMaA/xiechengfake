package org.lanqiao.entity;

import java.util.List;

public class China {
    private Integer areaId;

    private String areaName;

    private Integer higherLevel;

    private List<HotelInfo> hotelInfoList;

    public List<HotelInfo> getHotelInfoList() {
        return hotelInfoList;
    }

    public void setHotelInfoList(List<HotelInfo> hotelInfoList) {
        this.hotelInfoList = hotelInfoList;
    }

    public Integer getAreaId() {
        return areaId;
    }

    public void setAreaId(Integer areaId) {
        this.areaId = areaId;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName == null ? null : areaName.trim();
    }

    public Integer getHigherLevel() {
        return higherLevel;
    }

    public void setHigherLevel(Integer higherLevel) {
        this.higherLevel = higherLevel;
    }

    @Override
    public String toString() {
        return "China{" +
                "areaId=" + areaId +
                ", areaName='" + areaName + '\'' +
                ", higherLevel=" + higherLevel +
                ", hotelInfoList=" + hotelInfoList +
                '}';
    }
}