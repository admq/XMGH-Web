package com.xmgh.web.domain;

import com.jfinal.plugin.activerecord.Model;

import java.util.Date;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Reply extends Model<Reply> {
    public static Reply dao = new Reply();
    private String content;
    private Integer id;
    private Integer author;
    private Date time;
    private Integer topicid;


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

    public Integer getTopicid() {
        return this.topicid;
    }

    public void setTopicid(Integer topicid) {
        this.topicid=topicid;
    }

}