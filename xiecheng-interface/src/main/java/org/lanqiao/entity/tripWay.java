package org.lanqiao.entity;

public class tripWay {
    private Integer journeyWayId;

    private String wayName;

    private Integer typeId;

    public Integer getJourneyWayId() {
        return journeyWayId;
    }

    public void setJourneyWayId(Integer journeyWayId) {
        this.journeyWayId = journeyWayId;
    }

    public String getWayName() {
        return wayName;
    }

    public void setWayName(String wayName) {
        this.wayName = wayName == null ? null : wayName.trim();
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }
}