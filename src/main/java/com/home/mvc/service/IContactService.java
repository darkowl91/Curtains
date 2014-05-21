package com.home.mvc.service;

import com.home.model.contact.Contact;
import com.home.repository.IContactRepository;
import org.springframework.data.domain.Page;

/**
 * Created by Owl.
 */
public interface IContactService extends IBaseEntityService<Contact, Long, IContactRepository> {

    Page<Contact> findAll(int pageNumber);
}
