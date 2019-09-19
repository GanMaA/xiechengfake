package org.lanqiao.entity;

public class HotelIntroduce {
    private Integer hotelIntroId;

    private String phone;

    private String license;

    private String introduce;

    private String openYear;

    private Integer hotelId;

    public Integer getHotelIntroId() {
        return hotelIntroId;
    }

    public void setHotelIntroId(Integer hotelIntroId) {
        this.hotelIntroId = hotelIntroId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license == null ? null : license.trim();
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce == null ? null : introduce.trim();
    }

    public String getOpenYear() {
        return openYear;
    }

    public void setOpenYear(String openYear) {
        this.openYear = openYear == null ? null : openYear.trim();
    }

    public Integer getHotelId() {
        return hotelId;
    }

    public void setHotelId(Integer hotelId) {
        this.hotelId = hotelId;
    }
}