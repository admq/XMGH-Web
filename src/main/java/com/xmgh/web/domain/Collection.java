package com.xmgh.web.domain;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Collection {
    private Integer id;
    private Integer collectid;
    private Integer userid;


    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }

    public Integer getCollectid() {
        return this.collectid;
    }

    public void setCollectid(Integer collectid) {
        this.collectid=collectid;
    }

    public Integer getUserid() {
        return this.userid;
    }

    public void setUserid(Integer userid) {
        this.userid=userid;
    }

}