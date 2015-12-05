package com.xmgh.web.domain;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Course {
    private Integer id;
    private String name;
    private String code;
    private Integer type;


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

    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code=code;
    }

    public Integer getType() {
        return this.type;
    }

    public void setType(Integer type) {
        this.type=type;
    }

}