package com.pooria.poorsarvi.tehrani.productions.portfoliobackend.app.blog;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class BlogPostEntity {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    int id;

    @Size(min = 500, max = 30000)
    @NotNull
    String markDown;

    public String getMarkDown() {
        return markDown;
    }

    public void setMarkDown(String markDown) {
        this.markDown = markDown;
    }




    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

}
