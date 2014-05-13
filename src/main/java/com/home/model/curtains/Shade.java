package com.home.model.curtains;

import com.home.model.BaseEntity;
import com.home.model.image.Picture;
import org.hibernate.annotations.BatchSize;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.List;

@Entity
@Table(name = "Shade", schema = "Curtains")
public class Shade extends BaseEntity {

    @Column(name = "Price")
    @Size(max = 10, message = "{com.home.model.curtains.Shade.price}")
    private BigDecimal price;

    @OneToMany(mappedBy = "picture", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @BatchSize(size = 3)
    private List<Picture> pictures;

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

    public List<Picture> getPictures() {
        return pictures;
    }

    public void setPictures(List<Picture> pictures) {
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
