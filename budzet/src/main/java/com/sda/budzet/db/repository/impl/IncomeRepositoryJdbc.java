package com.sda.budzet.db.repository.impl;


import com.sda.budzet.db.model.Category;
import com.sda.budzet.db.model.Income;
import com.sda.budzet.db.repository.IncomeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("incomeRepositoryJdbc")
public class IncomeRepositoryJdbc implements IncomeRepository {

    private static final String INSERT_SQL = "INSERT INTO income(idUser, categoryID,incomeName,incomeAmount,addDate) " +
            "VALUES ('%d','%d','%s','%s','%s')";
    private final static String SELECT_ALL_INCOME = "SELECT * FROM income";
    private final static String SELECT_ALL = "SELECT * FROM category";
    private BeanPropertyRowMapper<Income> mapper = new BeanPropertyRowMapper<>(Income.class);
    private BeanPropertyRowMapper<Category> mapper2 = new BeanPropertyRowMapper<>(Category.class);


    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void save(Income income) {
        jdbcTemplate.execute(String.format(INSERT_SQL, income.getIdUser(),
                income.getCategoryID(), income.getIncomeName(),income.getIncomeAmount(),income.getAddDate()));
    }

    @Override
    public List<Category> getCategoryList() {
        return  jdbcTemplate.query(SELECT_ALL, mapper2);
    }

    @Override
    public List<Income> getIncomeList() {
        return  jdbcTemplate.query(SELECT_ALL_INCOME,mapper);
    }


}

