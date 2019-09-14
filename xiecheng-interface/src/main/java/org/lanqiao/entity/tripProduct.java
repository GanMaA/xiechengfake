package org.lanqiao.entity;

public class tripProduct {
    private Integer journeyProductId;

    private String productName;

    public Integer getJourneyProductId() {
        return journeyProductId;
    }

    public void setJourneyProductId(Integer journeyProductId) {
        this.journeyProductId = journeyProductId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName == null ? null : productName.trim();
    }
}