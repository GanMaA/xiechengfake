package org.lanqiao.entity;

import java.math.BigDecimal;

public class HotelInfo {
    private Integer hotelId;

    private String hotelName;

    private Integer hotelLevel;

    private BigDecimal hotelMinPrice;

    private BigDecimal mark;

    private String hotelPic;

    private Integer hotelGroupId;

    private Integer areaId;

    private China china;

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

    public Integer getAreaId() {
        return areaId;
    }

    public void setAreaId(Integer areaId) {
        this.areaId = areaId;
    }

    @Override
    public String toString() {
        return "HotelInfo{" +
                "hotelId=" + hotelId +
                ", hotelName='" + hotelName + '\'' +
                ", hotelLevel=" + hotelLevel +
                ", hotelMinPrice=" + hotelMinPrice +
                ", mark=" + mark +
                ", hotelPic='" + hotelPic + '\'' +
                ", hotelGroupId=" + hotelGroupId +
                ", areaId=" + areaId +
                '}';
    }
}