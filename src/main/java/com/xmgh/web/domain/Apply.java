package com.xmgh.web.domain;

import com.jfinal.plugin.activerecord.Model;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Apply extends Model<Apply> {
    public static Apply dao = new Apply();

    private Integer id;
    private Integer state;
    private Integer stepid;


    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }

    public Integer getState() {
        return this.state;
    }

    public void setState(Integer state) {
        this.state=state;
    }

    public Integer getStepid() {
        return this.stepid;
    }

    public void setStepid(Integer stepid) {
        this.stepid=stepid;
    }

}