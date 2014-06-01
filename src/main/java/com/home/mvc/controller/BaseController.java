package com.home.mvc.controller;

import com.home.model.advertisement.News;
import com.home.model.curtains.Shade;
import com.home.mvc.service.IBaseEntityService;
import com.home.repository.INewsRepository;
import com.home.repository.IShadeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {

    @Qualifier("NewsService")
    @Autowired
    private IBaseEntityService<News, Long, INewsRepository> newsService;

    @Qualifier("ShadeService")
    @Autowired
    private IBaseEntityService<Shade, Long, IShadeRepository> shadeService;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public final String startPage(Model model) {
        model.addAttribute("NEWS_LIST", newsService.findAll());
        model.addAttribute("SERVICE_LIST", shadeService.findAll());
        return "curtains.welcome";
    }
}
