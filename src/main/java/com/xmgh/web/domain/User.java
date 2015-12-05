package com.xmgh.web.domain;

import com.jfinal.plugin.activerecord.Model;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class User extends Model<User> {
    public static final User dao = new User();

    private Integer id;
    private Integer schoolid;
    private String identity;
    private String address;
    private Integer roleid;
    private String tel;
    private String name;
    private Integer experience;
    private String realname;


    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id=id;
    }

    public Integer getSchoolid() {
        return this.schoolid;
    }

    public void setSchoolid(Integer schoolid) {
        this.schoolid=schoolid;
    }

    public String getIdentity() {
        return this.identity;
    }

    public void setIdentity(String identity) {
        this.identity=identity;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address=address;
    }

    public Integer getRoleid() {
        return this.roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid=roleid;
    }

    public String getTel() {
        return this.tel;
    }

    public void setTel(String tel) {
        this.tel=tel;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name=name;
    }

    public Integer getExperience() {
        return this.experience;
    }

    public void setExperience(Integer experience) {
        this.experience=experience;
    }

    public String getRealname() {
        return this.realname;
    }

    public void setRealname(String realname) {
        this.realname=realname;
    }

    public String findPasswordByUsername(String username) {
        User user = dao.findFirst("select pass from t_user where name=?", username);

        return user != null ? (String)user.get("pass"):null;
    }
}