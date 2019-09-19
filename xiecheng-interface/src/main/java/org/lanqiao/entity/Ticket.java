package org.lanqiao.entity;

public class Ticket {
    private Integer ticketId;

    private Integer vovageId;

    private Integer userId;

    private Integer flightPrice;

    private String ticketSeat;

    private String tankType;

    public Integer getTicketId() {
        return ticketId;
    }

    public void setTicketId(Integer ticketId) {
        this.ticketId = ticketId;
    }

    public Integer getVovageId() {
        return vovageId;
    }

    public void setVovageId(Integer vovageId) {
        this.vovageId = vovageId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getFlightPrice() {
        return flightPrice;
    }

    public void setFlightPrice(Integer flightPrice) {
        this.flightPrice = flightPrice;
    }

    public String getTicketSeat() {
        return ticketSeat;
    }

    public void setTicketSeat(String ticketSeat) {
        this.ticketSeat = ticketSeat == null ? null : ticketSeat.trim();
    }

    public String getTankType() {
        return tankType;
    }

    public void setTankType(String tankType) {
        this.tankType = tankType == null ? null : tankType.trim();
    }
}