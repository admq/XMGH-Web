package com.xmgh.web.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;

/**
 * Created by larry on 10/6/15.
 */
public class AdminController extends BaseController {
    public void index() {
        renderJsp("/admin/login.jsp");
    }


    public void login() {
        String name = getPara("name");
        String pass = getPara("pass");


        UsernamePasswordToken token = new UsernamePasswordToken(name, pass);

        Subject currentUser = SecurityUtils.getSubject();
        currentUser.login(token);
        if(currentUser.isAuthenticated() && currentUser.hasRole("admin")) {
            redirect("/admin/index.jsp");
        } else {
            redirect("/admin");
        }
    }

    public void out() {
        Subject subject = SecurityUtils.getSubject();
        if(subject.isAuthenticated()) {
            subject.logout();
        }
        redirect("/admin");
    }
}
