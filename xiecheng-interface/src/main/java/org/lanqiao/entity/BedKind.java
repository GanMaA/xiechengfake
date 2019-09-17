package org.lanqiao.entity;

public class BedKind {
    private Integer bedId;

    private String bedCat;

    public Integer getBedId() {
        return bedId;
    }

    public void setBedId(Integer bedId) {
        this.bedId = bedId;
    }

    public String getBedCat() {
        return bedCat;
    }

    public void setBedCat(String bedCat) {
        this.bedCat = bedCat == null ? null : bedCat.trim();
    }
}