package com.xmgh.web.domain;

import com.jfinal.plugin.activerecord.Model;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Applystep extends Model<Applystep> {
    public static Applystep dao = new Applystep();

    private Integer id;
    private String describe;
    private Integer type;


    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }

    public String getDescribe() {
        return this.describe;
    }

    public void setDescribe(String describe) {
        this.describe=describe;
    }

    public Integer getType() {
        return this.type;
    }

    public void setType(Integer type) {
        this.type=type;
    }

}