package com.home.repository;

import com.home.model.account.User;

/**
 * Created by Owl.
 */
public interface IUserRepository extends IBaseEntityRepository<User, Long> {

    User findByEmail(String email);

    User findByUsername(String username);
}
