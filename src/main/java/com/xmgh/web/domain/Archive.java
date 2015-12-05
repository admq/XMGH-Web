package com.xmgh.web.domain;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Archive {
    private Integer id;
    private Integer userid;
    private Integer recordid;


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

    public Integer getRecordid() {
        return this.recordid;
    }

    public void setRecordid(Integer recordid) {
        this.recordid=recordid;
    }

}