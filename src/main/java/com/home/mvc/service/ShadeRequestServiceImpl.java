package com.home.mvc.service;

import com.google.common.collect.Lists;
import com.home.model.curtains.ShadeRequest;
import com.home.repository.IShadeRequestRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service("ShadeRequestService")
@Transactional
public class ShadeRequestServiceImpl extends BaseEntityServiceImpl<ShadeRequest, Long, IShadeRequestRepository> implements IShadeRequestService {

    @Override
    public List<ShadeRequest> findApproved() {
        return Lists.newArrayList(repository.findApproved());
    }

    @Override
    public List<ShadeRequest> findToApprove() {
        return Lists.newArrayList(repository.findToApprove());
    }

    @Override
    public List<ShadeRequest> findByUsername(String username) {
        return repository.findByUsername(username);
    }

}
