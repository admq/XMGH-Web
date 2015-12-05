package com.xmgh.web.controller;

import com.xmgh.web.domain.Login;
import com.xmgh.web.util.ParaKit;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;

/**
 * Created by root on 2015/9/19.
 */
public class LoginController extends BaseController {
    public void index() {
        String name = getPara("name");
        String pass = getPara("pass");

        UsernamePasswordToken token = new UsernamePasswordToken(name, pass);

        Subject currentUser = SecurityUtils.getSubject();
        currentUser.login(token);

        if(currentUser.isAuthenticated()) {
            redirect("/main.jsp");
        } else {
            render("/login.html");
        }
    }

    public void out() {
        Subject subject = SecurityUtils.getSubject();
        if(subject.isAuthenticated()) {
            subject.logout();
        }
        render("/login.html");
    }

    public void findByID() {
        Login login = Login.dao.findById(ParaKit.forceInteger(getPara("id")));
        renderJson(login);
    }
}
