package com.xmgh.web.domain;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Paper {
    private Integer id;
    private Integer belong;
    private String name;
    private String uri;


    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }

    public Integer getBelong() {
        return this.belong;
    }

    public void setBelong(Integer belong) {
        this.belong=belong;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name=name;
    }

    public String getUri() {
        return this.uri;
    }

    public void setUri(String uri) {
        this.uri=uri;
    }

}