package com.home.model.advertisement;

import com.home.model.BaseEntity;
import com.home.model.image.Picture;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Calendar;

@Entity
@Table(name = "tblNews", schema = "Curtains")
public class News extends BaseEntity {

    @Column(name = "Date")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    @NotEmpty(message = "{com.home.model.advertisement.News.date.notEmpty}")
    private Calendar date;

    @Column(name = "Title", nullable = false)
    @NotEmpty(message = "{com.home.model.advertisement.News.title.notEmpty}")
    @Size(max = 128, message = "{com.home.model.advertisement.News.title.size}")
    private String title;

    @Column(name = "Description")
    @NotEmpty(message = "{com.home.model.advertisement.News.description.notEmpty}")
    @Size(max = 255, message = "{com.home.model.advertisement.News.description.size}")
    private String description;

    @Column(name = "Content")
    @NotEmpty(message = "{com.home.model.advertisement.News.content.notEmpty}")
    @Size(max = 1024, message = "{com.home.model.advertisement.News.content.size}")
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
