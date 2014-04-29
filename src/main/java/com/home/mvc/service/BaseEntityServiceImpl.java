package com.home.mvc.service;

import com.home.model.BaseEntity;
import com.home.repository.IBaseEntityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public abstract class BaseEntityServiceImpl<T extends BaseEntity, ID extends Long> implements IBaseEntityService<T, ID> {

    @Autowired
    private IBaseEntityRepository<T, ID> repository;

    private Class<T> entityClass;

    public void setEntityClass(Class<T> entityClass) {
        this.entityClass = entityClass;
    }

    @Override
    public List<T> findAll() {
        return repository.findAll();
    }

    @Override
    public List<T> findAll(Sort sort) {
        return repository.findAll(sort);
    }

    @Override
    public List<T> findAll(Iterable<ID> ids) {
        return repository.findAll(ids);
    }

    @Override
    public <S extends T> List<S> save(Iterable<S> entities) {
        return repository.save(entities);
    }

    @Override
    public void flush() {
        repository.flush();
    }

    @Override
    public T saveAndFlush(T entity) {
        return repository.saveAndFlush(entity);
    }

    @Override
    public void deleteInBatch(Iterable<T> entities) {
        repository.deleteInBatch(entities);
    }

    @Override
    public void deleteAllInBatch() {
        repository.deleteAllInBatch();
    }

    @Override
    public Page<T> findAll(Pageable pageable) {
        return repository.findAll(pageable);
    }

    @Override
    public <S extends T> S save(S entity) {
        return repository.save(entity);
    }

    @Override
    public T findOne(ID id) {
        return repository.findOne(id);
    }

    @Override
    public boolean exists(ID id) {
        return repository.exists(id);
    }

    @Override
    public long count() {
        return repository.count();
    }

    @Override
    public void delete(ID id) {
        repository.delete(id);
    }

    @Override
    public void delete(T entity) {
        repository.delete(entity);
    }

    @Override
    public void delete(Iterable<? extends T> entities) {
        repository.delete(entities);
    }

    @Override
    public void deleteAll() {
        repository.deleteAll();
    }
}