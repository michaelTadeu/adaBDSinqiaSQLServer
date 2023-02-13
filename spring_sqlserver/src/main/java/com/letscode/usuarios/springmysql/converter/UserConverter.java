package com.letscode.usuarios.springmysql.converter;

import com.letscode.usuarios.springmysql.converter.common.ModelConverter;
import com.letscode.usuarios.springmysql.model.client.User;
import com.letscode.usuarios.springmysql.model.client.UserRequest;
import com.letscode.usuarios.springmysql.model.db.UserModel;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;

@Component
public class UserConverter implements ModelConverter<UserRequest, UserModel, User> {

    @Override
    public UserModel requestToModel(UserRequest request) {
        UserModel model = new UserModel();
        model.setPrimeiroNome(request.getPrimeiroNome());
        model.setSobrenome(request.getSobrenome());
        return model;
    }

    @Override
    public User modelToResponse(UserModel model) {
        User response = new User();
        response.setId(model.getId());
        response.setPrimeiroNome(model.getPrimeiroNome());
        response.setSobrenome(model.getSobrenome());
        response.setDataCadastro(new SimpleDateFormat("dd/MM/yyyy").format(model.getDataCadastro()));
        return response;
    }

}
