package com.home.mvc.controller;


import com.home.model.advertisement.News;
import com.home.mvc.service.IBaseEntityService;
import com.home.repository.INewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NewsController {


    @Qualifier("NewsService")
    @Autowired
    private IBaseEntityService<News, Long, INewsRepository> service;

    @RequestMapping(value = "/manageNews", method = RequestMethod.GET)
    public String manageNews(ModelMap model) {
        model.put("NEWS_LIST", service.findAll());
        return "curtains.admin.news";
    }

    @RequestMapping(value = "/addNews", method = RequestMethod.GET)
    public String addNews(ModelMap model) {
        model.put("news", new News());
        return "curtains.admin.new.news";
    }


    @RequestMapping(value = "/createNews", method = RequestMethod.POST)
    public String createNews(News news, ModelMap model) {
        service.save(news);
        return "redirect:/manageNews";
    }

    @RequestMapping(value = "/deleteNews", method = RequestMethod.GET)
    public String deleteNews(Long id, ModelMap model) {
        service.delete(id);
        return "redirect:/manageNews";
    }

    @RequestMapping(value = "/editNews", method = RequestMethod.GET)
    public String editNews(Long id, ModelMap model) {
        News news = service.findOne(id);
        model.put("news", news);
        return "curtains.admin.news";
    }

}
