package com.home.mvc.controller;

import com.home.mvc.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {

    @Autowired
    private IUserService userService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public final String startPage(Model model) {
        userService.findAll();
        userService.findByEmail("test");
        return "curtains.signUp";
    }

}
