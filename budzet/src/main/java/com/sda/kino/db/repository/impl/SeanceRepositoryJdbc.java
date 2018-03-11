package com.sda.kino.db.repository.impl;

import com.sda.kino.db.model.Seance;
import com.sda.kino.db.repository.SeanceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

@Repository("seanceRepositoryJdbc")
public class SeanceRepositoryJdbc implements SeanceRepository {

    private static final String SELECT_BY_CINEMA_ID =
            "SELECT s.id AS seance_id, s.seance_date AS seance_date, m.title AS movie_title " +
                    "FROM seances s LEFT JOIN movies m ON s.id_movie=m.id WHERE s.id_cinema = %d";

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<Seance> findByIdCinema(int cinemaId) {
        return jdbcTemplate.query(String.format(SELECT_BY_CINEMA_ID, cinemaId), new RowMapper<Seance>() {
            @Override
            public Seance mapRow(ResultSet resultSet, int i) throws SQLException {
                Seance seance = new Seance();
                seance.setId(resultSet.getInt("seance_id"));
                seance.setDateTime(new Date(resultSet.getTime("seance_date").getTime()));
                seance.setMovieName(resultSet.getString("movie_title"));
                return seance;
            }
        });
    }
}
