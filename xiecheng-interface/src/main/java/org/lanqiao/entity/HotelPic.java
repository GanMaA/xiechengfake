package org.lanqiao.entity;

public class HotelPic {
    private Integer hotelPicId;

    private Integer hotelId;

    private String hotelSecondarPic;

    public Integer getHotelPicId() {
        return hotelPicId;
    }

    public void setHotelPicId(Integer hotelPicId) {
        this.hotelPicId = hotelPicId;
    }

    public Integer getHotelId() {
        return hotelId;
    }

    public void setHotelId(Integer hotelId) {
        this.hotelId = hotelId;
    }

    public String getHotelSecondarPic() {
        return hotelSecondarPic;
    }

    public void setHotelSecondarPic(String hotelSecondarPic) {
        this.hotelSecondarPic = hotelSecondarPic == null ? null : hotelSecondarPic.trim();
    }
}