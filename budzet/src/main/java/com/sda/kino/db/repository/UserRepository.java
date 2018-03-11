package com.sda.kino.db.repository;

import com.sda.kino.db.model.User;

public interface UserRepository {
    boolean isLoginExists(String login);

    void save(User user);

    User findByLoginAndPassword(String login, String password);
}
