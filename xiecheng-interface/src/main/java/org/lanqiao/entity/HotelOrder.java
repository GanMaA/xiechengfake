package org.lanqiao.entity;

import java.util.Date;

public class HotelOrder {
    private Integer orderId;

    private String username;

    private Integer phone;

    private String email;

    private Date sDate;

    private Date eDate;

    private Integer hotelId;

    private Integer hotelRoomId;

    private Integer price;

    private Integer loginId;

    private HotelInfo   hotelInfo;

    public HotelInfo getHotelInfo() {
        return hotelInfo;
    }

    public void setHotelInfo(HotelInfo hotelInfo) {
        this.hotelInfo = hotelInfo;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public Integer getPhone() {
        return phone;
    }

    public void setPhone(Integer phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Date getsDate() {
        return sDate;
    }

    public void setsDate(Date sDate) {
        this.sDate = sDate;
    }

    public Date geteDate() {
        return eDate;
    }

    public void seteDate(Date eDate) {
        this.eDate = eDate;
    }

    public Integer getHotelId() {
        return hotelId;
    }

    public void setHotelId(Integer hotelId) {
        this.hotelId = hotelId;
    }

    public Integer getHotelRoomId() {
        return hotelRoomId;
    }

    public void setHotelRoomId(Integer hotelRoomId) {
        this.hotelRoomId = hotelRoomId;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getLoginId() {
        return loginId;
    }

    public void setLoginId(Integer loginId) {
        this.loginId = loginId;
    }

    @Override
    public String toString() {
        return "HotelOrder{" +
                "orderId=" + orderId +
                ", username='" + username + '\'' +
                ", phone=" + phone +
                ", email='" + email + '\'' +
                ", sDate=" + sDate +
                ", eDate=" + eDate +
                ", hotelId=" + hotelId +
                ", hotelRoomId=" + hotelRoomId +
                ", price=" + price +
                ", loginId=" + loginId +
                ", hotelInfo=" + hotelInfo +
                '}';
    }
}