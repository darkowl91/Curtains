package com.home.mvc.service;


import com.home.model.curtains.ShadeRequest;
import com.home.repository.IShadeRequestRepository;

import java.util.List;

public interface IShadeRequestService extends IBaseEntityService<ShadeRequest, Long, IShadeRequestRepository> {


    public List<ShadeRequest> findApproved();

    public List<ShadeRequest> findToApprove();

    public List<ShadeRequest> findByUsername(String username);

}
