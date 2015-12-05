package com.xmgh.web.domain;

import com.jfinal.plugin.activerecord.Model;

import java.util.Date;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Topic extends Model<Topic> {
    public static final Topic dao = new Topic();

    private String content;
    private Integer id;
    private Integer author;
    private Date time;
    private String title;
    private Integer belong;
    private Integer unuseful;
    private Integer useful;
    private Integer canshow;
    private Integer type;


    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content=content;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }

    public Integer getAuthor() {
        return this.author;
    }

    public void setAuthor(Integer author) {
        this.author=author;
    }

    public Date getTime() {
        return this.time;
    }

    public void setTime(Date time) {
        this.time=time;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title=title;
    }

    public Integer getBelong() {
        return this.belong;
    }

    public void setBelong(Integer belong) {
        this.belong=belong;
    }

    public Integer getUnuseful() {
        return this.unuseful;
    }

    public void setUnuseful(Integer unuseful) {
        this.unuseful=unuseful;
    }

    public Integer getUseful() {
        return this.useful;
    }

    public void setUseful(Integer useful) {
        this.useful=useful;
    }

    public Integer getCanshow() {
        return this.canshow;
    }

    public void setCanshow(Integer canshow) {
        this.canshow=canshow;
    }

    public Integer getType() {
        return this.type;
    }

    public void setType(Integer type) {
        this.type=type;
    }

}