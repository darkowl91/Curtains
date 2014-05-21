package com.home.mvc.service;

import com.home.model.account.Authority;
import com.home.repository.IAuthorityRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("AuthorityService")
@Transactional
public class AuthorityServiceImpl extends BaseEntityServiceImpl<Authority, Long, IAuthorityRepository> implements IAuthorityService {

    @Transactional(readOnly = true)
    @Override
    public Authority findByName(String name) {
        return repository.findByName(name);
    }

}
