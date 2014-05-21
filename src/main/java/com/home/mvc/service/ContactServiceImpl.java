package com.home.mvc.service;

import com.home.model.contact.Contact;
import com.home.repository.IContactRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("ContactService")
@Transactional

public class ContactServiceImpl extends BaseEntityServiceImpl<Contact, Long, IContactRepository> implements IContactService {

    private static final int PAGE_SIZE = 10;

    @Transactional(readOnly = true)
    @Override
    public Page<Contact> findAll(int pageNumber) {
        PageRequest request =
                new PageRequest(pageNumber - 1, PAGE_SIZE, Sort.Direction.DESC, "date");
        return repository.findAll(request);
    }
}
