package com.sda.kino.service;

import com.sda.kino.db.model.User;
import com.sda.kino.db.repository.UserRepository;
import com.sda.kino.dto.LoginForm;
import com.sda.kino.dto.RegistrationForm;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UsersService {

    @Resource(name = "userRepositoryJdbc")
    private UserRepository userRepository;

    public boolean isLoginExists(String login){
        return userRepository.isLoginExists(login);
    }

    public void register(RegistrationForm form){
        User user = new User();
        user.setLogin(form.getLogin());
        user.setPassword(DigestUtils.sha1Hex(form.getPassword().getBytes()));
        user.setEmail(form.getEmail());
        userRepository.save(user);
    }

    public User login(LoginForm loginForm){
        User user = userRepository.findByLoginAndPassword(loginForm.getLogin(), DigestUtils.sha1Hex(loginForm.getPassword()));
        return user;
    }


}
