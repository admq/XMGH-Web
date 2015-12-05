package com.xmgh.web.domain;

import com.jfinal.plugin.activerecord.Model;

import java.util.Date;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Article extends Model<Article> {
    public static final Article dao = new Article();

    private String content;
    private Integer id;
    private Integer author;
    private Date time;
    private String title;
    private Integer type;
    private String src;
    private String dutyeditor;
    private Integer hot;


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

    public Integer getType() {
        return this.type;
    }

    public void setType(Integer type) {
        this.type=type;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getDutyeditor() {
        return dutyeditor;
    }

    public void setDutyeditor(String dutyeditor) {
        this.dutyeditor = dutyeditor;
    }

    public Integer getHot() {
        return hot;
    }

    public void setHot(Integer hot) {
        this.hot = hot;
    }
}