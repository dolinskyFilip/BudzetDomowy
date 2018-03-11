package com.sda.kino.db.repository;

import com.sda.kino.db.model.Cinema;

import java.util.List;

public interface CinemaRepository {
    List<Cinema> getCinemaList();
}
