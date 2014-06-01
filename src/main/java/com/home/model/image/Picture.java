package com.home.model.image;

import com.home.model.BaseEntity;
import com.home.programm.util.ImageUtil;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "Picture", schema = "Curtains")
public class Picture extends BaseEntity {

    private static final long serialVersionUID = 6556507900823885901L;

    @Column(name = "PictureName", nullable = false)
    @NotEmpty(message = "{com.home.model.image.Picture.pictureName.notEmpty}")
    @Size(max = 255, message = "{com.home.model.image.Picture.pictureName.size}")
    @Pattern(regexp = "([^\\s]+(\\.(?i)(jpg|png|gif|bmp))$)")
    private String pictureName;

    @Column(name = "Picture", columnDefinition = "mediumblob", nullable = false)
    @NotEmpty(message = "{com.home.model.image.Picture.picture.notEmpty}")
    @Size(max = 1048576, message = "{com.home.model.image.Picture.picture.size}")
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
