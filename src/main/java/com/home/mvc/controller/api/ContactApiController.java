package com.home.mvc.controller.api;


import com.home.model.contact.Contact;
import com.home.mvc.service.IContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("api/contact")
public class ContactApiController {

    @Autowired
    private IContactService contactService;

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public String create(Contact contact) {
        contactService.save(contact);
        return "Saved contact id: " + contact.getId();
    }
}