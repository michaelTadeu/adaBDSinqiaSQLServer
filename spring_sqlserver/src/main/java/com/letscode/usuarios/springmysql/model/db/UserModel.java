package com.letscode.usuarios.springmysql.model.db;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="USUARIO")
public class UserModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Long id;

    @Column
    private String primeiroNome;

    @Column
    private String sobrenome;

    @Column
    private Date dataCadastro;

    public UserModel() {

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

    public Date getDataCadastro() {
        return dataCadastro;
    }

    public void setDataCadastro(Date dataCadastro) {
        this.dataCadastro = dataCadastro;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserModel userModel = (UserModel) o;

        if (id != null ? !id.equals(userModel.id) : userModel.id != null) return false;
        if (primeiroNome != null ? !primeiroNome.equals(userModel.primeiroNome) : userModel.primeiroNome != null) return false;
        if (sobrenome != null ? !sobrenome.equals(userModel.sobrenome) : userModel.sobrenome != null) return false;
        return dataCadastro != null ? dataCadastro.equals(userModel.dataCadastro) : userModel.dataCadastro == null;
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
