package com.home.mvc.service;

import com.home.model.account.User;
import com.home.programm.exception.DuplicateEmailException;
import com.home.programm.exception.DuplicateUsernameException;
import com.home.repository.IUserRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Owl.
 */
@Service("UserService")
@Transactional
public class UserServiceImpl extends BaseEntityServiceImpl<User, Long, IUserRepository> implements IUserService {

    @Override
    public User findByEmail(String email) {
        return repository.findByEmail(email);
    }

    @Override
    public User findByUsername(String username) {
        return repository.findByUsername(username);
    }

    @Override
    public User register(User user) throws DuplicateEmailException, DuplicateUsernameException {
        if (usernameExist(user.getUsername())) {
            throw new DuplicateUsernameException();
        }

        if (emailExist(user.getEmail())) {
            throw new DuplicateEmailException();
        }

        return repository.save(user);
    }

    private boolean emailExist(String email) {
        User user = repository.findByEmail(email);
        return user != null;

    }

    private boolean usernameExist(String username) {
        User user = repository.findByUsername(username);
        return user != null;

    }
}
