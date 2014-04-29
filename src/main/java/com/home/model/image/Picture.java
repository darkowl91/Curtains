package com.home.model.image;

import com.home.model.BaseEntity;
import com.home.programm.util.ImageUtil;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "tblPicture", schema = "Curtains")
public class Picture extends BaseEntity {

    @Column(name = "PictureName", nullable = false)
    private String pictureName;

    @Column(name = "Picture", columnDefinition = "mediumblob", nullable = false)
    private byte[] picture;

    @Transient
    private String imageAsString;

    public Picture() {
    }

    public Picture(byte[] picture, String pictureName) {
        this.picture = picture;
        this.pictureName = pictureName;
    }

    public String getPictureName() {
        return pictureName;
    }

    public void setPictureName(String imageName) {
        this.pictureName = imageName;
    }

    public byte[] getPicture() {
        return picture;
    }

    public void setPicture(byte[] image) {
        this.picture = image;
    }

    public String getImageAsString() {
        return ImageUtil.getEncoded(picture, ImageUtil.ISO, "");
    }
}
