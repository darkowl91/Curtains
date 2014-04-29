package com.home.repository;

import com.home.model.BaseEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.io.Serializable;

public interface IBaseEntityRepository<T extends BaseEntity, ID extends Serializable> extends JpaRepository<T, ID> {


}
