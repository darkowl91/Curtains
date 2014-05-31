package com.home.mvc.controller;

import com.home.model.contact.Contact;
import com.home.mvc.service.IContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.Locale;

@Controller
public class ContactController {


    @Autowired
    private IContactService contactService;

    @Autowired
    private MessageSource messageSource;

    @RequestMapping(value = "/manageContact/{pageNumber}", method = RequestMethod.GET)
    public String manageContact(@PathVariable int pageNumber, Model model) {
        Page<Contact> page = contactService.findAll(pageNumber);

        int current = page.getNumber() + 1;
        int begin = Math.max(1, current - 5);
        int end = Math.min(begin + 10, page.getTotalPages());

        model.addAttribute("page", page);
        model.addAttribute("beginIndex", begin);
        model.addAttribute("endIndex", end);
        model.addAttribute("currentIndex", current);

        return "curtains.admin.contacts";
    }

    @RequestMapping(value = "/viewContacts", method = RequestMethod.GET)
    public String contactUs(Model model) {
        model.addAttribute("contact", new Contact());
        return "curtains.contact";
    }

    @RequestMapping(value = "/viewContacts", method = RequestMethod.POST)
    public String addContact(@Valid @ModelAttribute("contact") Contact contact,
                             BindingResult result, RedirectAttributes redirectAttributes,
                             Locale locale) {

        if (result.hasErrors()) {
            return "curtains.contact";
        }

        redirectAttributes.addFlashAttribute("message",
                messageSource.getMessage("carWash.contact.success", new Object[]{}, locale));
        contactService.save(contact);
        return "redirect:/viewContacts";
    }
}