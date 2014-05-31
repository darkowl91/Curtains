package com.home.mvc.controller;

import com.home.model.curtains.Shade;
import com.home.mvc.service.IBaseEntityService;
import com.home.repository.IShadeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShadeController {


    @Qualifier("ShadeService")
    @Autowired
    private IBaseEntityService<Shade, Long, IShadeRepository> service;

    @RequestMapping(value = "/newService", method = RequestMethod.GET)
    public String newService(ModelMap model) {
        model.put("newShade", new Shade());
        return "curtains.admin.new.service";
    }

    @RequestMapping(value = "/viewServiceList", method = RequestMethod.GET)
    public String viewServiceList(ModelMap model) {
        model.put("SERVICES", service.findAll());
        return "curtains.pricing";
    }

    @RequestMapping(value = "/manageServices", method = RequestMethod.GET)
    public String manageServices(ModelMap model) {
        model.put("SERVICES", service.findAll());
        return "curtains.admin.service";
    }

    @RequestMapping(value = "/createService", method = RequestMethod.POST)
    public String createService(Shade newService) {
        service.save(newService);
        return "redirect: /manageServices";
    }

    @RequestMapping(value = "/removeService", method = RequestMethod.GET)
    public String removeService(Long id) {
        service.delete(id);
        return "redirect: /manageServices";
    }
}
