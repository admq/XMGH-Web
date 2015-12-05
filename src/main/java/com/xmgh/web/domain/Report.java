package com.xmgh.web.domain;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Report {
    private Integer id;
    private Integer userid;
    private Integer courseid;


    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }

    public Integer getUserid() {
        return this.userid;
    }

    public void setUserid(Integer userid) {
        this.userid=userid;
    }

    public Integer getCourseid() {
        return this.courseid;
    }

    public void setCourseid(Integer courseid) {
        this.courseid=courseid;
    }

}