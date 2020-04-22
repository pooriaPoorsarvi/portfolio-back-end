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

    @Size(min = 20, max = 300)
    @NotNull
    String title;

    @Size(min = 100, max = 2000)
    @NotNull
    String intro;

    @Size(min = 1, max = 1000)
    @NotNull
    String imageSrc;


    @Size(min = 500, max = 10383)
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


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getImageSrc() {
        return imageSrc;
    }

    public void setImageSrc(String image_src) {
        this.imageSrc = image_src;
    }
}
