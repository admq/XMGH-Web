package com.xmgh.web.domain;

import com.jfinal.plugin.activerecord.Model;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class School extends Model<School> {
    public static final School dao = new School();

    private Integer id;
    private Integer rank;
    private String name;
    private String shortname;
    private String englishname;
    private Integer type;
    private Integer countryid;


    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }

    public Integer getRank() {
        return this.rank;
    }

    public void setRank(Integer rank) {
        this.rank=rank;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name=name;
    }

    public String getShortname() {
        return this.shortname;
    }

    public void setShortname(String shortname) {
        this.shortname=shortname;
    }

    public String getEnglishname() {
        return this.englishname;
    }

    public void setEnglishname(String englishname) {
        this.englishname=englishname;
    }

    public Integer getType() {
        return this.type;
    }

    public void setType(Integer type) {
        this.type=type;
    }

    public Integer getCountryid() {
        return this.countryid;
    }

    public void setCountryid(Integer countryid) {
        this.countryid=countryid;
    }

}