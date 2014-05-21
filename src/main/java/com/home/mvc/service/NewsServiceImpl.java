package com.home.mvc.service;

import com.home.model.advertisement.News;
import com.home.repository.INewsRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("NewsService")
@Transactional
public class NewsServiceImpl extends BaseEntityServiceImpl<News, Long, INewsRepository> {


}
