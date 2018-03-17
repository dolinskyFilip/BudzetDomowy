package com.sda.budzet.db.repository.impl;

import com.sda.budzet.db.model.Outgoings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository("outgoingsRepositoryJdbc")
public class OutgoingsJdbc implements OutgoingsRepository {
    private static final String INSERT_SQL = "INSERT INTO outgoings(UserID,outgoingsCategory, outgoingsAmount) " +
            "VALUES ('%d','%s', '%s')";
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void save(Outgoings outgoings) {
        jdbcTemplate.execute(String.format(INSERT_SQL, outgoings.getUserID(),
                outgoings.getOutgoingsCategory(), outgoings.getOutgoingsAmount()));
    }
}
