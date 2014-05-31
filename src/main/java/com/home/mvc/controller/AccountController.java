package com.home.mvc.controller;


import com.home.model.account.Authority;
import com.home.model.account.User;
import com.home.model.account.phone.Phone;
import com.home.model.account.registration.RegistrationForm;
import com.home.mvc.component.convertes.UserConverter;
import com.home.mvc.service.IAuthorityService;
import com.home.mvc.service.IPhoneService;
import com.home.mvc.service.IUserService;
import com.home.programm.exception.DuplicateEmailException;
import com.home.programm.exception.DuplicatePhoneException;
import com.home.programm.exception.DuplicateUsernameException;
import com.home.programm.security.util.SecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.io.IOException;
import java.security.Principal;
import java.util.Locale;
import java.util.Map;

@Controller
@SessionAttributes("user")
public class AccountController {

    private static final String ROLE_USER = "ROLE_USER";

    @Autowired
    private UserConverter userConverter;

    @Autowired
    private IAuthorityService authorityService;

    @Autowired
    private IPhoneService phoneService;

    @Autowired
    private IUserService userService;

    @Autowired
    private MessageSource messageSource;

    @RequestMapping(value = "/signIn", method = RequestMethod.GET)
    public String signIn(@RequestParam Map<String, String> allRequestParams,
                         Model model) {

        String signInError = allRequestParams.get("signInError");
        if (signInError != null) {
            model.addAttribute("signInError", "true");
        }

        return "curtains.signIn";
    }

    @RequestMapping(value = "/signUp", method = RequestMethod.GET)
    public String signUpForm(Model model) {
        model.addAttribute("newUser", new RegistrationForm());
        return "curtains.signUp";
    }

    @RequestMapping(value = "/signUp", method = RequestMethod.POST)
    public String signUp(
            @Valid @ModelAttribute("newUser") RegistrationForm registrationForm,
            BindingResult result) {

        if (result.hasErrors()) {
            return "curtains.signUp";
        }

        User newUser = userConverter.convert(registrationForm);
        Authority authority = authorityService.findByName(ROLE_USER);
        newUser.setAuthority(authority);

        User registered = createUserAccount(newUser, result);

        if (registered == null) {
            return "curtains.signUp";
        }
        SecurityUtil.logInUser(registered);

        return "redirect:/";
    }

    @RequestMapping(value = "/selfCare", method = RequestMethod.GET)
    public String selfCareForm(Model model, Principal principal) {
        User user = userService.findByUsername(principal.getName());
        model.addAttribute("user", user);
        model.addAttribute("newPhone", new Phone());
        return "curtains.selfCare";
    }

    @RequestMapping(value = "/selfCare", method = RequestMethod.POST)
    public String updatePersonalInformation(
            @Valid @ModelAttribute("user") User user, BindingResult result,
            Model model) {

        if (result.hasErrors()) {
            model.addAttribute("newPhone", new Phone());
            return "curtains.selfCare";
        }

        user = userService.save(user);

        if (user == null) {
            model.addAttribute("newPhone", new Phone());
            return "curtains.selfCare";
        }

        return "redirect:/selfCare";
    }

    @RequestMapping(value = "/selfCare/uploadPicture", method = RequestMethod.POST)
    public String uploadPhoto(@Valid @ModelAttribute("user") User user,
                              BindingResult result, Model model) throws IOException {

        if (result.hasErrors()) {
            model.addAttribute("newPhone", new Phone());
            return "curtains.selfCare";
        }

        userService.save(user);
        return "redirect:/selfCare";
    }

    @RequestMapping(value = "/selfCare/addPhone", method = RequestMethod.POST)
    public String addPhone(@ModelAttribute("newPhone") Phone newPhone,
                           @ModelAttribute("user") User user, BindingResult result,
                           Model model, Locale locale) {

        if (result.hasErrors()) {
            return "curtains.selfCare";
        }

        newPhone.setUser(user);
        newPhone = createPhone(newPhone, model, locale);

        if (newPhone == null) {
            model.addAttribute("newPhone", new Phone());
            return "curtains.selfCare";
        }

        return "redirect:/selfCare";
    }

    @RequestMapping(value = "/selfCare/deletePhone/{id}", method = RequestMethod.GET)
    public String removePhone(@PathVariable("id") Long id) {
        phoneService.delete(id);
        return "redirect:/selfCare";
    }

    private User createUserAccount(User newUser, BindingResult result) {
        User registered = null;

        try {
            registered = userService.register(newUser);
        } catch (DuplicateEmailException ex) {
            addFieldError("newUser", "email", newUser.getEmail(),
                    "NotExist.user.email", result);
        } catch (DuplicateUsernameException ex) {
            addFieldError("newUser", "username", newUser.getEmail(),
                    "NotExist.user.username", result);
        }

        return registered;
    }

    private Phone createPhone(Phone newPhone, Model model, Locale locale) {
        Phone phone = null;
        try {
            phone = phoneService.savePhone(newPhone);
        } catch (DuplicatePhoneException ex) {
            model.addAttribute("errorMessage", messageSource.getMessage(
                    "NotExist.phone.value", new Object[]{}, locale));
        }
        return phone;
    }

    private void addFieldError(String objectName, String fieldName,
                               String fieldValue, String errorCode, BindingResult result) {
        FieldError error = new FieldError(objectName, fieldName, fieldValue,
                false, new String[]{errorCode}, new Object[]{}, errorCode);

        result.addError(error);
    }
}
