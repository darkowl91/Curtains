package com.home.mvc.service;


import com.home.model.curtains.Shade;
import com.home.repository.IShadeRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("ShadeService")
@Transactional
public class ShadeServiceImpl extends BaseEntityServiceImpl<Shade, Long, IShadeRepository> {


}
