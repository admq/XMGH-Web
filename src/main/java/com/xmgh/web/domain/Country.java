package com.xmgh.web.domain;

import com.jfinal.plugin.activerecord.Model;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Country extends Model<Country> {
    public static Country dao = new Country();

    private Integer id;
    private String name;


    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name=name;
    }

}