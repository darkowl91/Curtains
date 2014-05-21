package com.home.mvc.service;

import com.home.model.account.phone.Phone;
import com.home.programm.exception.DuplicatePhoneException;
import com.home.repository.IPhoneRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("PhoneService")
@Transactional
public class PhoneServiceImpl extends BaseEntityServiceImpl<Phone, Long, IPhoneRepository> implements IPhoneService {

    private boolean phoneValueExist(String phoneValue) {
        Phone phone = repository.findByPhoneValue(phoneValue);

        if (phone != null) {
            return true;
        }

        return false;
    }

    @Override
    public Phone savePhone(Phone phone) throws DuplicatePhoneException {
        if (phoneValueExist(phone.getPhoneValue())) {
            throw new DuplicatePhoneException();
        }

        return repository.save(phone);
    }
}
