package org.lanqiao.entity;

import java.math.BigDecimal;

public class HotelArea {
    private Integer hotelAreaId;

    private Integer hotelId;

    private Integer areaId;

    private BigDecimal longitude;

    private BigDecimal latitude;

    private String areaDetail;

    public Integer getHotelAreaId() {
        return hotelAreaId;
    }

    public void setHotelAreaId(Integer hotelAreaId) {
        this.hotelAreaId = hotelAreaId;
    }

    public Integer getHotelId() {
        return hotelId;
    }

    public void setHotelId(Integer hotelId) {
        this.hotelId = hotelId;
    }

    public Integer getAreaId() {
        return areaId;
    }

    public void setAreaId(Integer areaId) {
        this.areaId = areaId;
    }

    public BigDecimal getLongitude() {
        return longitude;
    }

    public void setLongitude(BigDecimal longitude) {
        this.longitude = longitude;
    }

    public BigDecimal getLatitude() {
        return latitude;
    }

    public void setLatitude(BigDecimal latitude) {
        this.latitude = latitude;
    }

    public String getAreaDetail() {
        return areaDetail;
    }

    public void setAreaDetail(String areaDetail) {
        this.areaDetail = areaDetail == null ? null : areaDetail.trim();
    }
}