package com.home.mvc.component.convertes;

import com.home.model.account.User;
import com.home.model.account.registration.RegistrationForm;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class UserConverter implements Converter<RegistrationForm, User> {

    @Override
    public User convert(RegistrationForm registrationForm) {
        User user = new User();
        user.setUsername(registrationForm.getUsername());
        user.setPassword(registrationForm.getPassword());
        user.setEmail(registrationForm.getEmail());
        user.setFirstName(registrationForm.getFirstName());
        user.setLastName(registrationForm.getLastName());
        user.setEnabled(true);

        return user;
    }
}
