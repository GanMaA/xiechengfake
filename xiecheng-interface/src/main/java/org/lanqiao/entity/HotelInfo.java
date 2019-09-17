package org.lanqiao.entity;

import java.io.Serializable;
import java.math.BigDecimal;

public class HotelInfo implements Serializable {
    private Integer hotelId;

    private String hotelName;

    private Integer hotelLevel;

    private BigDecimal hotelMinPrice;

    private BigDecimal mark;

    private String hotelPic;

    private Integer hotelGroupId;

    private HotelArea hotelArea;

    public Integer getHotelId() {
        return hotelId;
    }

    public void setHotelId(Integer hotelId) {
        this.hotelId = hotelId;
    }

    public String getHotelName() {
        return hotelName;
    }

    public void setHotelName(String hotelName) {
        this.hotelName = hotelName == null ? null : hotelName.trim();
    }

    public Integer getHotelLevel() {
        return hotelLevel;
    }

    public void setHotelLevel(Integer hotelLevel) {
        this.hotelLevel = hotelLevel;
    }

    public BigDecimal getHotelMinPrice() {
        return hotelMinPrice;
    }

    public void setHotelMinPrice(BigDecimal hotelMinPrice) {
        this.hotelMinPrice = hotelMinPrice;
    }

    public BigDecimal getMark() {
        return mark;
    }

    public void setMark(BigDecimal mark) {
        this.mark = mark;
    }

    public String getHotelPic() {
        return hotelPic;
    }

    public void setHotelPic(String hotelPic) {
        this.hotelPic = hotelPic == null ? null : hotelPic.trim();
    }

    public Integer getHotelGroupId() {
        return hotelGroupId;
    }

    public void setHotelGroupId(Integer hotelGroupId) {
        this.hotelGroupId = hotelGroupId;
    }

    public HotelArea getHotelArea() {
        return hotelArea;
    }

    public void setHotelArea(HotelArea hotelArea) {
        this.hotelArea = hotelArea;
    }
}