package org.lanqiao.entity;

public class tripScheme {
    private Integer journeySchemeId;

    private String journeyRoute;

    private Integer budget;

    private Integer journeyTime;

    private String schemeKind;

    private String start;

    private String destination;

    private String schemeImg;

    private Integer supplierId;

    private String description;

    public Integer getJourneySchemeId() {
        return journeySchemeId;
    }

    public void setJourneySchemeId(Integer journeySchemeId) {
        this.journeySchemeId = journeySchemeId;
    }

    public String getJourneyRoute() {
        return journeyRoute;
    }

    public void setJourneyRoute(String journeyRoute) {
        this.journeyRoute = journeyRoute == null ? null : journeyRoute.trim();
    }

    public Integer getBudget() {
        return budget;
    }

    public void setBudget(Integer budget) {
        this.budget = budget;
    }

    public Integer getJourneyTime() {
        return journeyTime;
    }

    public void setJourneyTime(Integer journeyTime) {
        this.journeyTime = journeyTime;
    }

    public String getSchemeKind() {
        return schemeKind;
    }

    public void setSchemeKind(String schemeKind) {
        this.schemeKind = schemeKind == null ? null : schemeKind.trim();
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start == null ? null : start.trim();
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination == null ? null : destination.trim();
    }

    public String getSchemeImg() {
        return schemeImg;
    }

    public void setSchemeImg(String schemeImg) {
        this.schemeImg = schemeImg == null ? null : schemeImg.trim();
    }

    public Integer getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(Integer supplierId) {
        this.supplierId = supplierId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}