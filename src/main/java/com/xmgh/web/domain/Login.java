package com.xmgh.web.domain;


import com.jfinal.plugin.activerecord.Model;

/**
 * @author larry
 * @since 2015-09-19 11:49:52
 * 
 */ 
public class Login extends Model<Login> {
    public static final Login dao = new Login();
    private Integer id;
    private String name;
    private String pass;


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

    public String getPass() {
        return this.pass;
    }

    public void setPass(String pass) {
        this.pass=pass;
    }

    public String findPasswordByUsername(String username) {
        Login login = dao.findFirst("select pass from t_login where name=?", username);

        return login != null ? (String)login.get("pass"):null;
    }
}