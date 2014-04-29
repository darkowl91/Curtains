package com.home.model.contact;

import com.home.model.BaseEntity;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Calendar;

@Entity
@Table(name = "tblContact", schema = "Curtains")
public class Contact extends BaseEntity {

    @Column(name = "Name", nullable = false)
    @NotEmpty(message = "{com.home.model.contact.Contact.name.notEmpty}")
    @Size(max = 128, message = "{{com.home.model.contact.Contact.name.size}}")
    private String name;

    @Email(message = "{com.home.model.contact.Contact.email.incorrectEmail}")
    @NotEmpty(message = "{com.home.model.contact.Contact.email.notEmpty}")
    @Size(max = 255, message = "{com.home.model.contact.Contact.email.size}")
    private String email;

    @Column(name = "Message", nullable = false)
    @NotEmpty(message = "{com.home.model.contact.Contact.message.notEmpty}")
    @Size(max = 255, message = "{com.home.model.contact.Contact.message.size}")
    private String message;

    @Column(name = "Date", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    private Calendar date;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Calendar getDate() {
        return date;
    }

    public void setDate(Calendar date) {
        this.date = date;
    }

}
