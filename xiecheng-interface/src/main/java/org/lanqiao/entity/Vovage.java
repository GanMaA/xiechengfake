package org.lanqiao.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Vovage {
    private Integer vovageId;

    private Integer flightId;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ticketDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date flyTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date arrivedTime;

    private String flyCity;

    private String arrivedCity;

    public Integer getVovageId() {
        return vovageId;
    }

    public void setVovageId(Integer vovageId) {
        this.vovageId = vovageId;
    }

    public Integer getFlightId() {
        return flightId;
    }

    public void setFlightId(Integer flightId) {
        this.flightId = flightId;
    }

    public Date getTicketDate() {
        return ticketDate;
    }

    public void setTicketDate(Date ticketDate) {
        this.ticketDate = ticketDate;
    }

    public Date getFlyTime() {
        return flyTime;
    }

    public void setFlyTime(Date flyTime) {
        this.flyTime = flyTime;
    }

    public Date getArrivedTime() {
        return arrivedTime;
    }

    public void setArrivedTime(Date arrivedTime) {
        this.arrivedTime = arrivedTime;
    }

    public String getFlyCity() {
        return flyCity;
    }

    public void setFlyCity(String flyCity) {
        this.flyCity = flyCity == null ? null : flyCity.trim();
    }

    public String getArrivedCity() {
        return arrivedCity;
    }

    public void setArrivedCity(String arrivedCity) {
        this.arrivedCity = arrivedCity == null ? null : arrivedCity.trim();
    }

    @Override
    public String toString() {
        return "Vovage{" +
                "vovageId=" + vovageId +
                ", flightId=" + flightId +
                ", ticketDate=" + ticketDate +
                ", flyTime=" + flyTime +
                ", arrivedTime=" + arrivedTime +
                ", flyCity='" + flyCity + '\'' +
                ", arrivedCity='" + arrivedCity + '\'' +
                '}';
    }

}