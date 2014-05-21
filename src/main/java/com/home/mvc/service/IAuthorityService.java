package com.home.mvc.service;

import com.home.model.account.Authority;
import com.home.repository.IAuthorityRepository;

/**
 * Created by Owl.
 */
public interface IAuthorityService extends IBaseEntityService<Authority, Long, IAuthorityRepository> {

    Authority findByName(String name);

}
