package com.sda.kino.db.repository.impl;

import com.sda.kino.db.model.Cinema;
import com.sda.kino.db.model.User;
import com.sda.kino.db.repository.CinemaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("cinemaRepositoryJdbc")
public class CinemaRepositoryJdbc implements CinemaRepository {

    private final static String SELECT_ALL = "SELECT * FROM cinemas";

    private BeanPropertyRowMapper<Cinema> mapper = new BeanPropertyRowMapper<>(Cinema.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<Cinema> getCinemaList() {
        return jdbcTemplate.query(SELECT_ALL, mapper);
    }
}
