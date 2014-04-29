package com.home.model.account;

import com.home.model.BaseEntity;

import javax.persistence.*;

@Entity
@Table(name = "tblPhone", schema = "Curtains")
public class Phone extends BaseEntity {

    @Column(name = "Operator")
    private String operator;

    @Column(name = "PhoneValue", nullable = false, unique = true)
    private String phoneValue;

    @Column(name = "PhoneType")
    private String type;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "UserId", nullable = false)
    private User user;

    public Phone() {
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getPhoneValue() {
        return phoneValue;
    }

    public void setPhoneValue(String phoneValue) {
        this.phoneValue = phoneValue;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
