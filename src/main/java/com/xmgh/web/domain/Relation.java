package com.xmgh.web.domain;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Relation {
    private Integer followingid;
    private Integer id;
    private Integer followedid;


    public Integer getFollowingid() {
        return this.followingid;
    }

    public void setFollowingid(Integer followingid) {
        this.followingid=followingid;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }

    public Integer getFollowedid() {
        return this.followedid;
    }

    public void setFollowedid(Integer followedid) {
        this.followedid=followedid;
    }

}