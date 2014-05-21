package com.home.mvc.service;

import com.home.model.contact.Contact;
import com.home.repository.IBaseEntityRepository;
import org.springframework.data.domain.Page;

/**
 * Created by Owl.
 */
public interface IContactService extends IBaseEntityService<Contact, Long, IBaseEntityRepository<Contact, Long>> {

    Page<Contact> findAll(int pageNumber);
}
