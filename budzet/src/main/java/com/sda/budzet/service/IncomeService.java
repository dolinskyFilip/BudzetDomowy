package com.sda.budzet.service;

import com.sda.budzet.db.model.Income;
import com.sda.budzet.db.repository.IncomeRepository;
import com.sda.budzet.dto.IncomeForm;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class IncomeService {

    @Resource(name = "incomeRepositoryJdbc")
    private IncomeRepository incomeRepository;

    public void income(IncomeForm form){
        Income income = new Income();
        income.setIdUser(form.getIdUser());
        income.setIncomeCategory(form.getIncomeCategory());
        income.setIncomeAmount(form.getIncomeAmount());
        incomeRepository.save(income);
    }
}
