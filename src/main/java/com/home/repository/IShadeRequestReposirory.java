package com.home.repository;

import com.home.model.curtains.ShadeRequest;

import java.util.List;

/**
 * Created by Owl.
 */
public interface IShadeRequestReposirory extends IBaseEntityRepository<ShadeRequest, Long> {

    public List<ShadeRequest> findApproved();

    public List<ShadeRequest> findToApprove();

    public List<ShadeRequest> findByUsername(String username);

}
