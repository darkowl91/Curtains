package com.home.model.curtains;

import com.home.model.BaseEntity;
import com.home.model.account.User;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Calendar;

@Entity
@Table(name = "ShadeRequest", schema = "Curtains")
public class ShadeRequest extends BaseEntity {

    private static final long serialVersionUID = 1161335604190027979L;

    @Column(name = "Date", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    private Calendar date;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ShadeId", nullable = false)
    private Shade shade;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "UserId", nullable = false)
    private User user;

    @Column(name = "Approved")
    private boolean isApproved;

    public Calendar getDate() {
        return date;
    }

    public void setDate(Calendar date) {
        this.date = date;
    }

    public Shade getShade() {
        return shade;
    }

    public void setShade(Shade shade) {
        this.shade = shade;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public boolean isApproved() {
        return isApproved;
    }

    public void setApproved(boolean isApproved) {
        this.isApproved = isApproved;
    }

}
