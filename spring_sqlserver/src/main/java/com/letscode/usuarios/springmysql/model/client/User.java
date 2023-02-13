package com.letscode.usuarios.springmysql.model.client;

import java.util.Objects;

public class User {
    private Long id;
    private String primeiroNome;
    private String sobrenome;
    private String dataCadastro;

    public User() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public String getDataCadastro() {
        return dataCadastro;
    }

    public void setDataCadastro(String dataCadastro) {
        this.dataCadastro = dataCadastro;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        if (id != null ? !id.equals(user.id) : user.id != null) return false;
        if (primeiroNome != null ? !primeiroNome.equals(user.primeiroNome) : user.primeiroNome != null) return false;
        if (sobrenome != null ? !sobrenome.equals(user.sobrenome) : user.sobrenome != null) return false;
        return dataCadastro != null ? dataCadastro.equals(user.dataCadastro) : user.dataCadastro == null;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (primeiroNome != null ? primeiroNome.hashCode() : 0);
        result = 31 * result + (sobrenome != null ? sobrenome.hashCode() : 0);
        result = 31 * result + (dataCadastro != null ? dataCadastro.hashCode() : 0);
        return result;
    }
}
