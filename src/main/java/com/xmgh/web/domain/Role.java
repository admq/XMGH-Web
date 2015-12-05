package com.xmgh.web.domain;

import com.jfinal.plugin.activerecord.Model;

import java.util.ArrayList;
import java.util.List;

/**
 * @author larry
 * @since 2015-09-19 11:07:28
 * 
 */ 
public class Role extends Model<Role> {
    public static final Role dao = new Role();
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

    public List<Role> findByUsername(String username) {
        String sql = "select tr.code code from t_user_role tur " +
                "left join t_role tr on tur.roleid=tr.id " +
                "left join t_user tu on tur.userid=tu.id " +
                "where tu.name=?";
        List<Role> roles = dao.find(sql, username);
        return roles;
    }

    public List<String> findRoleNamesByUsername(String username) {
        List<Role> roles = findByUsername(username);
        List<String> strRoles = new ArrayList<String>();
        for (Role role : roles) {
            strRoles.add((String)role.get("code"));
        }
        return strRoles;
    }
}