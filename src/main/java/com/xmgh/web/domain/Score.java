package com.xmgh.web.domain;

import java.util.Date;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Score {
    private Integer id;
    private Date time;
    private Float grade;
    private Integer type;
    private Integer courseid;


    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }

    public Date getTime() {
        return this.time;
    }

    public void setTime(Date time) {
        this.time=time;
    }

    public Float getGrade() {
        return this.grade;
    }

    public void setGrade(Float grade) {
        this.grade=grade;
    }

    public Integer getType() {
        return this.type;
    }

    public void setType(Integer type) {
        this.type=type;
    }

    public Integer getCourseid() {
        return this.courseid;
    }

    public void setCourseid(Integer courseid) {
        this.courseid=courseid;
    }

}