package org.lanqiao.entity;

import java.math.BigDecimal;

public class HotelRoom {
    private Integer hotelRoomId;

    private BedKind bedKind;

    private String roomName;

    private BigDecimal roomPrice;

    private String roomPic;

    private Integer hotelId;

    public Integer getHotelRoomId() {
        return hotelRoomId;
    }

    public void setHotelRoomId(Integer hotelRoomId) {
        this.hotelRoomId = hotelRoomId;
    }

    public BedKind getBedKind() {
        return bedKind;
    }

    public void setBedKind(BedKind bedKind) {
        this.bedKind = bedKind;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName == null ? null : roomName.trim();
    }

    public BigDecimal getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(BigDecimal roomPrice) {
        this.roomPrice = roomPrice;
    }

    public String getRoomPic() {
        return roomPic;
    }

    public void setRoomPic(String roomPic) {
        this.roomPic = roomPic == null ? null : roomPic.trim();
    }

    public Integer getHotelId() {
        return hotelId;
    }

    public void setHotelId(Integer hotelId) {
        this.hotelId = hotelId;
    }
}