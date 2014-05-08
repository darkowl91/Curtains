package com.home.mvc.service;

import com.home.model.BaseEntity;
import com.home.repository.IBaseEntityRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.io.Serializable;
import java.util.List;

public interface IBaseEntityService<T extends BaseEntity, ID extends Serializable, T_REPOSITIRY extends IBaseEntityRepository<T, ID>> {

    List<T> findAll();

    List<T> findAll(Sort sort);

    List<T> findAll(Iterable<ID> ids);

    <S extends T> List<S> save(Iterable<S> entities);

    void flush();

    T saveAndFlush(T entity);

    void deleteInBatch(Iterable<T> entities);

    void deleteAllInBatch();

    Page<T> findAll(Pageable pageable);

    <S extends T> S save(S entity);

    T findOne(ID id);

    boolean exists(ID id);

    long count();

    void delete(ID id);

    void delete(T entity);

    void delete(Iterable<? extends T> entities);

    void deleteAll();
}
