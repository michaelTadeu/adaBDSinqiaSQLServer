package com.letscode.usuarios.springmysql.service;

import com.letscode.usuarios.springmysql.converter.UserConverter;
import com.letscode.usuarios.springmysql.model.client.User;
import com.letscode.usuarios.springmysql.model.client.UserRequest;
import com.letscode.usuarios.springmysql.model.db.UserModel;
import com.letscode.usuarios.springmysql.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;
import java.util.Date;

@Service
@Transactional
public class UserService {

    @Autowired
    UserConverter userConverter;

    @Autowired
    UserRepository userRepository;

    public User save(final UserRequest userRequest) {
        UserModel userModel = userConverter.requestToModel(userRequest);
        userModel.setDataCadastro(new Date());
        return userConverter.modelToResponse(userRepository.save(userModel));
    }

    public Collection<User> getAll() {
        return userConverter.modelToResponse(userRepository.findAll());
    }

//    public User findById() {
//
//    }

//    public User deleteUser() {
//
//    }
}
