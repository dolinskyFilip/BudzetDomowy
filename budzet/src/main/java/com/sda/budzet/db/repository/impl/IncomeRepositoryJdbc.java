package com.sda.budzet.db.repository.impl;


import com.sda.budzet.db.model.Income;
import com.sda.budzet.db.repository.IncomeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository("incomeRepositoryJdbc")
    public class IncomeRepositoryJdbc implements IncomeRepository {

        private static final String INSERT_SQL = "INSERT INTO income(idUser, incomeCategory, incomeAmount) VALUES ('%d', '%s', '%s')";


        @Autowired
        private JdbcTemplate jdbcTemplate;

        @Override
        public void save(Income income) {
            jdbcTemplate.execute(String.format(INSERT_SQL, income.getIdUser(), income.getIncomeCategory(), income.getIncomeAmount()));
        }


    }

