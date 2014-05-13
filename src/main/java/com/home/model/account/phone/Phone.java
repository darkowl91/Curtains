package com.home.model.account.phone;

import com.home.model.BaseEntity;
import com.home.model.account.User;

import javax.persistence.*;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "Phone", schema = "Curtains")
public class Phone extends BaseEntity {

    @Column(name = "Operator")
    private Operator operator;

    @Column(name = "PhoneValue", nullable = false, unique = true)
    @Pattern(regexp = "\\+375 \\(\\d{2}\\) \\d{3}(-\\d{2}){2}", message = "{com.home.model.account.phone.Phone.phoneValue.notMatchPattern}")
    private String phoneValue;

    @Column(name = "PhoneType")
    private Type type;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "UserId", nullable = false)
    private User user;

    public Phone() {
    }

    public Operator getOperator() {
        return operator;
    }

    public void setOperator(Operator operator) {
        this.operator = operator;
    }

    public String getPhoneValue() {
        return phoneValue;
    }

    public void setPhoneValue(String phoneValue) {
        this.phoneValue = phoneValue;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
