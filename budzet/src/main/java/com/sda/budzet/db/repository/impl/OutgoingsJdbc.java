package com.sda.budzet.db.repository.impl;

import com.sda.budzet.db.model.Category;
import com.sda.budzet.db.model.Outgoings;
import com.sda.budzet.db.repository.OutgoingsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("outgoingsRepositoryJdbc")
public class OutgoingsJdbc implements OutgoingsRepository {
    private static final String INSERT_SQL = "INSERT INTO outgoings(UserID,categoryID,outgoingsName, outgoingsAmount, addDate) " +
            "VALUES ('%d','%d', '%s','%s','%s')";
    private final static String SELECT_ALL = "SELECT * FROM category";
    private BeanPropertyRowMapper<Category> mapper = new BeanPropertyRowMapper<>(Category.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void save(Outgoings outgoings) {
        jdbcTemplate.execute(String.format(INSERT_SQL, outgoings.getUserID(),
                outgoings.getCategoryID(), outgoings.getOutgoingsName(),outgoings.getOutgoingsAmount(), outgoings.getAddDate()));
    }

    @Override
    public List<Category> getCategoryList() {
        return  jdbcTemplate.query(SELECT_ALL, mapper);
    }
}
