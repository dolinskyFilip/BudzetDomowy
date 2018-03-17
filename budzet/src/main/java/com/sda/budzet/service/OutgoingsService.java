package com.sda.budzet.service;

import com.sda.budzet.db.model.Outgoings;

import com.sda.budzet.db.repository.impl.OutgoingsRepository;
import com.sda.budzet.dto.OutgoingsForm;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class OutgoingsService {
    @Resource(name = "outgoingsRepositoryJdbc")
    private OutgoingsRepository outgoingsRepository;

    public void outgoings(OutgoingsForm form) {
        Outgoings outgoings = new Outgoings();
        outgoings.setUserID(form.getUserID());
        outgoings.setOutgoingsCategory(form.getOutgoingsCategory());
        outgoings.setOutgoingsAmount(form.getOutgoingsAmount());
        outgoingsRepository.save(outgoings);
    }
}
