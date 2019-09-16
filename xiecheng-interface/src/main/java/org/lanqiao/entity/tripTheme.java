package org.lanqiao.entity;

public class tripTheme {
    private Integer journeyThemeId;

    private String themeName;

    public Integer getJourneyThemeId() {
        return journeyThemeId;
    }

    public void setJourneyThemeId(Integer journeyThemeId) {
        this.journeyThemeId = journeyThemeId;
    }

    public String getThemeName() {
        return themeName;
    }

    public void setThemeName(String themeName) {
        this.themeName = themeName == null ? null : themeName.trim();
    }
}