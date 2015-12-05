package com.xmgh.web.controller;

import com.jfinal.aop.Before;
import com.xmgh.web.domain.Role;
import com.xmgh.web.domain.User;
import com.xmgh.web.domain.UserRole;
import com.xmgh.web.interceptor.ParameterInterceptor;
import com.xmgh.web.util.ParaKit;

import java.util.List;

/**
 * Created by root on 2015/9/19.
 */
@Before(ParameterInterceptor.class)
public class UserController extends BaseController {
    public void index() {
        render("/user.html");
    }

    public void addOrUpdate() {
        User user = new User();
        user.set("id", ParaKit.forceInteger(getPara("id")));
        user.set("name", getPara("name"));
        user.set("realname", getPara("realname"));
        user.set("identity", getPara("identity"));
        user.set("tel", getPara("tel"));
        user.set("address", getPara("address"));
        user.set("schoolid", ParaKit.forceInteger(getPara("school")));


        User identity = User.dao.findFirst("select * from t_user where identity=?", getPara("identity"));
        boolean success = false;
        if (identity == null) {
            success = user.save();
        } else {
            success = user.update();
        }

        //更新用户角色
        if(success) {
            UserRole userRole = new UserRole();
            Integer roleId = ParaKit.forceInteger(getPara("roleid"));
            userRole.set("id", roleId);
            userRole.set("userid", ParaKit.forceInteger(getPara("id")));
            userRole.set("roleid", ParaKit.forceInteger(getPara("role")));
            if(roleId == null) success = userRole.save();
            else success = userRole.update();
        }

        renderSuccessFlag(success);
    }

    public void update() {

    }

    public void del() {
        boolean success = User.dao.deleteById(ParaKit.forceInteger(getPara("id")));
        renderSuccessFlag(success);
    }

    public void findByID() {
        String sql = "select u.*,r.id roleid from t_user u " +
                "left join t_user_role ur on ur.userid=u.id " +
                "left join t_role r on r.id=ur.roleid " +
                "where u.id=?";
        User user = User.dao.findFirst(sql, ParaKit.forceInteger(getPara("id")));
        renderJson(user);
    }

    public void getUsers() {
        String sql = "select u.*,r.name rolename from t_user u " +
                     "left join t_user_role ur on ur.userid=u.id " +
                     "left join t_role r on r.id=ur.roleid " +
                     "group by u.id";

        List<User> users = User.dao.find(sql);
        renderJson(users);
    }

    public void getRoles() {
        List<Role> roles = Role.dao.find("select * from t_role");
        renderJson(roles);
    }

}
