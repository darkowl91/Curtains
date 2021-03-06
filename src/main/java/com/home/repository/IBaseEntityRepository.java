package com.home.repository;

import com.home.model.BaseEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

@Repository
public interface IBaseEntityRepository<T extends BaseEntity, ID extends Serializable> extends JpaRepository<T, ID> {


}
