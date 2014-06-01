package com.home.model.account;

import com.home.model.BaseEntity;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name = "Authority", schema = "Curtains")
public class Authority extends BaseEntity {

    private static final long serialVersionUID = -8645411107211718433L;

    @Column(name = "Name", nullable = false)
    @NotEmpty(message = "{com.home.model.account.Authority.name.notEmpty}")
    @Size(max = 128, message = "{com.home.model.account.Authority.name.Size}")
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
