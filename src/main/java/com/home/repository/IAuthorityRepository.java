package com.home.repository;

import com.home.model.account.Authority;

/**
 * Created by Owl.
 */
public interface IAuthorityRepository extends IBaseEntityRepository<Authority, Long> {

    Authority findByName(String name);
}
