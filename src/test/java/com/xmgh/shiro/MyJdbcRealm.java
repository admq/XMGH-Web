package com.xmgh.shiro;

import org.apache.shiro.realm.jdbc.JdbcRealm;

/**
 * Created by root on 2015/9/21.
 */
public class MyJdbcRealm extends JdbcRealm {
    public MyJdbcRealm() {
        this.setAuthenticationQuery("select pass from t_login where name = ?");
    }
}
