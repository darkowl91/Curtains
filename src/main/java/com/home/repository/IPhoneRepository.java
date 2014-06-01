package com.home.repository;

import com.home.model.account.phone.Phone;

/**
 * Created by Owl.
 */
public interface IPhoneRepository extends IBaseEntityRepository<Phone, Long> {


    Phone findByPhoneValue(String phoneValue);

}
