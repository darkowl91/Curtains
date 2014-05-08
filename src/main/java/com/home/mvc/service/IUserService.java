package com.home.mvc.service;

import com.home.model.account.User;
import com.home.repository.IUserRepository;

/**
 * Created by Owl.
 */
public interface IUserService extends IBaseEntityService<User, Long, IUserRepository> {

    User findByEmail(String email);
}
