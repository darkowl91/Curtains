package com.home.mvc.service;

import com.home.model.account.User;
import com.home.repository.IUserRepository;
import org.springframework.stereotype.Service;

/**
 * Created by Owl.
 */
@Service
public class UserServiceImpl extends BaseEntityServiceImpl<User, Long, IUserRepository> implements IUserService {

    public User findByEmail(String email) {
        return repository.findByEmail(email);
    }


}
