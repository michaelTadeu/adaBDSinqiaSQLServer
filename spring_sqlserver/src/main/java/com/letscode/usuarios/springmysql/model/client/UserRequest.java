package com.letscode.usuarios.springmysql.model.client;

import java.util.Objects;

public class UserRequest {
    private String primeiroNome;
    private String sobrenome;

    public UserRequest() {

    }

    public String getPrimeiroNome() {
        return primeiroNome;
    }

    public void setPrimeiroNome(String primeiroNome) {
        this.primeiroNome = primeiroNome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof UserRequest)) return false;
        UserRequest that = (UserRequest) o;
        return primeiroNome.equals(that.primeiroNome) && sobrenome.equals(that.sobrenome);
    }

    @Override
    public int hashCode() {
        int result = primeiroNome != null ? primeiroNome.hashCode() : 0;
        result = 31 * result + (sobrenome != null ? sobrenome.hashCode() : 0);
        return result;
    }
}
