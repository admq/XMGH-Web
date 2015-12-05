package com.xmgh.web.domain;

import java.util.Date;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Message {
    private String content;
    private Integer id;
    private Integer author;
    private Date time;
    private String title;
    private Date expiretime;
    private Integer userid;


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

    public Date getExpiretime() {
        return this.expiretime;
    }

    public void setExpiretime(Date expiretime) {
        this.expiretime=expiretime;
    }

    public Integer getUserid() {
        return this.userid;
    }

    public void setUserid(Integer userid) {
        this.userid=userid;
    }

}