package com.home.model.account;

import com.home.model.BaseEntity;
import com.home.model.image.Picture;
import org.hibernate.annotations.BatchSize;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Calendar;
import java.util.List;

@Entity
@Table(name = "tblUser", schema = "Curtains")
public class User extends BaseEntity {

    @Column(name = "Username", nullable = false, unique = true)
    @NotEmpty(message = "{com.home.model.account.User.username.notEmpty}")
    @Size(max = 255, message = "{com.home.model.account.User.username.size}")
    private String username;

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "PictureId")
    private Picture picture;

    @Column(name = "Password", nullable = false)
    private String password;

    @Column(name = "Enabled")
    private boolean enabled;

    @Column(name = "Email", nullable = false, unique = true)
    @Email(message = "{com.home.model.account.User.email.incorrectEmail}")
    @NotEmpty(message = "{com.home.model.account.User.email.notEmpty}")
    @Size(max = 255, message = "{com.home.model.account.User.email.size}")
    private String email;

    @Column(name = "FirstName", nullable = false)
    @NotEmpty(message = "{com.home.model.account.User.firstName.notEmpty}")
    @Size(max = 255, message = "{com.home.model.account.User.firstName.size}")
    private String firstName;

    @Column(name = "LastName", nullable = false)
    @NotEmpty(message = "{com.home.model.account.User.lastName.notEmpty}")
    @Size(max = 255, message = "{com.home.model.account.User.lastName.size}")
    private String lastName;

    @Column(name = "Birthday")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private Calendar birthDay;

    @Column(name = "RegistrationDate")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    private Calendar registrationDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "AuthorityId", nullable = false)
    private Authority authority;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @BatchSize(size = 3)
    private List<Phone> phones;

    public User() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Picture getPicture() {
        return picture;
    }

    public void setPicture(Picture picture) {
        this.picture = picture;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Calendar getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(Calendar birthDay) {
        this.birthDay = birthDay;
    }

    public Calendar getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Calendar registrationDate) {
        this.registrationDate = registrationDate;
    }

    public List<Phone> getPhones() {
        return phones;
    }

    public void setPhones(List<Phone> phones) {
        this.phones = phones;
    }

    public Authority getAuthority() {
        return authority;
    }

    public void setAuthority(Authority authority) {
        this.authority = authority;
    }

}
