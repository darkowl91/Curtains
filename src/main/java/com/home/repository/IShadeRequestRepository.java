package com.home.repository;

import com.home.model.curtains.ShadeRequest;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created by Owl.
 */
public interface IShadeRequestRepository extends IBaseEntityRepository<ShadeRequest, Long> {

    @Query(value = "select request from ShadeRequest request where request.isApproved=true")
    public List<ShadeRequest> findApproved();

    @Query(value = "select request from ShadeRequest request where request.isApproved=false")
    public List<ShadeRequest> findToApprove();

    @Query(value = "select request from ShadeRequest request join request.user user where user.username=:username")
    public List<ShadeRequest> findByUsername(String username);

}
