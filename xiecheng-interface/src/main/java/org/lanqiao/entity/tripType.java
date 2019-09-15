package org.lanqiao.entity;

public class tripType {
    private Integer journeyTypeId;

    private String typeName;

    private Integer themeId;

    public Integer getJourneyTypeId() {
        return journeyTypeId;
    }

    public void setJourneyTypeId(Integer journeyTypeId) {
        this.journeyTypeId = journeyTypeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName == null ? null : typeName.trim();
    }

    public Integer getThemeId() {
        return themeId;
    }

    public void setThemeId(Integer themeId) {
        this.themeId = themeId;
    }
}