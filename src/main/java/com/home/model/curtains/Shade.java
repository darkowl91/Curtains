package com.home.model.curtains;

import com.home.model.BaseEntity;
import com.home.model.image.Picture;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.math.BigDecimal;

@Entity
@Table(name = "Shade", schema = "Curtains")
public class Shade extends BaseEntity {

    private static final long serialVersionUID = 5698785987373041545L;

    @Column(name = "Price", nullable = false)
//    @Size(max = 10, message = "{com.home.model.curtains.Shade.price}") TODO: need to implement validator
    private BigDecimal price;

    /*Could not write JSON: No serializer found for class org.hibernate.proxy.pojo.javassist.JavassistLazyInitializer*/
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "PictureId")
    private Picture pictures;

    @Column(name = "Name", nullable = false)
    @NotEmpty(message = "{com.home.model.curtains.Shade.name.notEmpty}")
    @Size(max = 128, message = "{com.home.model.curtains.Shade.name.size}")
    private String name;

    @Column(name = "Type", nullable = false)
    @NotEmpty(message = "{com.home.model.curtains.Shade.type.notEmpty}")
    @Size(max = 128, message = "{com.home.model.curtains.Shade.type.size}")
    private String type;

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Picture getPictures() {
        return pictures;
    }

    public void setPictures(Picture pictures) {
        this.pictures = pictures;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
