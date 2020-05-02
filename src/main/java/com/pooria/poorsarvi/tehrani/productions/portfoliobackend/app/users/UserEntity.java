package com.pooria.poorsarvi.tehrani.productions.portfoliobackend.app.users;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
public class UserEntity {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    int id;

    @Size(min = 10, max = 500)
    String email;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public UserEntity() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
