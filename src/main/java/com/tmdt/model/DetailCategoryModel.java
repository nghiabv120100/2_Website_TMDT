package com.tmdt.model;

public class DetailCategoryModel {
    private int id;
    private String DetailCateName;
    private String image;
    private int cateId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDetailCateName() {
        return DetailCateName;
    }

    public void setDetailCateName(String detailCateName) {
        DetailCateName = detailCateName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getCateId() {
        return cateId;
    }

    public void setCateId(int cateId) {
        this.cateId = cateId;
    }
}
