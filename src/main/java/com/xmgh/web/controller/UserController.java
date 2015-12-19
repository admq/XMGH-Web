package com.xmgh.web.controller;

import com.jfinal.aop.Before;
import com.jfinal.plugin.activerecord.Page;
import com.xmgh.web.domain.Role;
import com.xmgh.web.domain.School;
import com.xmgh.web.domain.User;
import com.xmgh.web.domain.UserRole;
import com.xmgh.web.interceptor.ParameterInterceptor;
import com.xmgh.web.util.ParaKit;
import com.xmgh.web.util.SessionKit;
import com.xmgh.web.util.SqlKit;

import java.util.List;
import java.util.Map;

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
        Integer id = ParaKit.forceInteger(getPara("id"));
        user.set("id", id);
        user.set("name", getPara("name"));
        user.set("realname", getPara("realname"));
        user.set("identity", getPara("identity"));
        user.set("tel", getPara("tel"));
        user.set("address", getPara("address"));
        user.set("schoolid", ParaKit.forceInteger(getPara("school")));


        User identity = User.dao.findFirst("select * from t_user where identity=?", getPara("identity"));
        boolean success = false;
        if (id == null) {
            success = user.save();
        } else {
            success = user.update();
        }
        if(success) {
            UserRole userRole = new UserRole();
            Integer roleId = ParaKit.forceInteger(getPara("roleid"));
            userRole.set("id", roleId);
            userRole.set("userid", user.get("id"));
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
        if(success) {
            UserRole ur = UserRole.dao.findFirst("select * from t_user_role where userid="+ParaKit.forceInteger(getPara("id")));
            success = UserRole.dao.deleteById(ur.get("id"));
        }
        renderSuccessFlag(success);
    }

    public void findByID() {
        String sql = "select u.*,r.id roleid,r.name roleName,scl.name schoolName from t_user u " +
                "left join t_user_role ur on ur.userid=u.id " +
                "left join t_role r on r.id=ur.roleid " +
                "left join t_school scl on u.schoolid=scl.id " +
                "where u.id=?";
        User user = User.dao.findFirst(sql, ParaKit.forceInteger(getPara("id")));
        renderJson(user);
    }

    public void getUsers() {
        String sql = "select u.* from t_user u " +
                     "left join t_user_role ur on ur.userid=u.id " +
                     "left join t_role r on r.id=ur.roleid " +
                     "group by u.id";

        List<User> users = User.dao.find(sql);
        renderJson(users);
    }

    public void getUsersByConditionInJsonWithPaginate() {
        Map<String, String> paraMap = ParaKit.parsePara(getPara("paraStr"));
        int pageNum = ParaKit.forceInteger(getPara("pageNum"));
        int pageSize = ParaKit.forceInteger(getPara("pageSize"));
        String sql = "from t_user " + SqlKit.genWhere(paraMap, null, true);

        Page<User> users = User.dao.paginate(pageNum, pageSize, "select * ", sql);
        renderJson(users);
    }

    public void getRoles() {
        List<Role> roles = Role.dao.find("select * from t_role");
        renderJson(roles);
    }

}
