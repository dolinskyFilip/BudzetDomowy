package com.sda.budzet.service;

import com.sda.budzet.db.model.Category;
import com.sda.budzet.db.model.Outgoings;

import com.sda.budzet.db.repository.OutgoingsRepository;
import com.sda.budzet.dto.OutgoingsForm;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OutgoingsService {
    @Resource(name = "outgoingsRepositoryJdbc")
    private OutgoingsRepository outgoingsRepository;

    public List<Category> getCategory(){
        return outgoingsRepository.getCategoryList();
    }
  public List<Outgoings> getOutgoings(){
        return outgoingsRepository.getOutgoingsList();
  }



    public void outgoings(OutgoingsForm form) {
        Outgoings outgoings = new Outgoings();
        outgoings.setUserID(form.getUserID());
        outgoings.setCategoryID(form.getCategoryID());
        outgoings.setOutgoingsName(form.getOutgoingsName());
        outgoings.setOutgoingsAmount(form.getOutgoingsAmount());
        outgoings.setAddDate(form.getAddDate());
        outgoingsRepository.save(outgoings);
    }


}
