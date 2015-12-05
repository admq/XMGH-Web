package com.xmgh.web.domain;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Record {
    private String val;
    private Integer id;
    private String name;
    private Integer type;


    public String getVal() {
        return this.val;
    }

    public void setVal(String val) {
        this.val=val;
    }

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

    public Integer getType() {
        return this.type;
    }

    public void setType(Integer type) {
        this.type=type;
    }

}