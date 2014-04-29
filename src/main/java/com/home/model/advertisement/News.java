package com.home.model.advertisement;

import com.home.model.BaseEntity;
import com.home.model.image.Picture;

import javax.persistence.*;
import java.util.Calendar;

@Entity
@Table(name = "tblNews", schema = "Curtains")
public class News extends BaseEntity {

    @Column(name = "Date")
    @Temporal(TemporalType.TIMESTAMP)
    private Calendar date;

    @Column(name = "Title", nullable = false)
    private String title;

    @Column(name = "Description")
    private String description;

    @Column(name = "Content")
    private String content;

    /*Could not write JSON: No serializer found for class org.hibernate.proxy.pojo.javassist.JavassistLazyInitializer*/
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "PictureId")
    private Picture picture;

    public Calendar getDate() {
        return date;
    }

    public void setDate(Calendar date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Picture getPicture() {
        return picture;
    }

    public void setPicture(Picture picture) {
        this.picture = picture;
    }

}
