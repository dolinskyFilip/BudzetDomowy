package com.sda.kino.db.repository;

import com.sda.kino.db.model.Seance;

import java.util.List;

public interface SeanceRepository {
    List<Seance> findByIdCinema(int cinemaId);
}
