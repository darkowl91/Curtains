package com.home.mvc.service;

import com.home.model.account.phone.Phone;
import com.home.programm.exception.DuplicatePhoneException;
import com.home.repository.IPhoneRepository;

/**
 * Created by Owl.
 */
public interface IPhoneService extends IBaseEntityService<Phone, Long, IPhoneRepository> {

    Phone savePhone(Phone entity) throws DuplicatePhoneException;
}
