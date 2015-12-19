package com.xmgh.web;

import com.alibaba.druid.filter.stat.StatFilter;
import com.alibaba.druid.util.JdbcConstants;
import com.alibaba.druid.wall.WallFilter;
import com.jfinal.config.*;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.xmgh.web.app.controller.AppIndexController;
import com.xmgh.web.controller.*;
import com.xmgh.web.domain.*;
import com.xmgh.web.interceptor.ParameterInterceptor;

/**
 * Created by root on 2015/9/19.
 */
public class MainConfig extends JFinalConfig {
    @Override
    public void configConstant(Constants me) {
        me.setDevMode(true);

        me.setError401View("/err.html");
    }

    @Override
    public void configRoute(Routes me) {
        me.add("/", IndexController.class);
        me.add("/login", LoginController.class);
        me.add("/user", UserController.class);
        me.add("/school", SchoolController.class);
        me.add("/article", ArticleController.class);
        me.add("/group", GroupController.class);
        me.add("/topic", TopicController.class);
        me.add("/admin", AdminController.class);
        me.add("/file", FileController.class);
        me.add("/apply", ApplyController.class);
        me.add("/country", CountryController.class);

        me.add("/app", AppIndexController.class);
    }

    @Override
    public void configPlugin(Plugins me) {
        DruidPlugin druidPlugin = new DruidPlugin("jdbc:mysql://localhost:3306/xmgh?useUnicode=true&characterEncoding=UTF8", "root", "root");
        druidPlugin.addFilter(new StatFilter());
        WallFilter wall = new WallFilter();
        wall.setDbType(JdbcConstants.MYSQL);
        druidPlugin.addFilter(wall);
        me.add(druidPlugin);
        ActiveRecordPlugin activeRecordPlugin = new ActiveRecordPlugin(druidPlugin);
        me.add(activeRecordPlugin);

        activeRecordPlugin.addMapping("t_login", Login.class);
        activeRecordPlugin.addMapping("t_role", Role.class);
        activeRecordPlugin.addMapping("t_user", User.class);
        activeRecordPlugin.addMapping("t_school", School.class);
        activeRecordPlugin.addMapping("t_article", Article.class);
        activeRecordPlugin.addMapping("t_articletype", Articletype.class);
        activeRecordPlugin.addMapping("t_permission", Permission.class);
        activeRecordPlugin.addMapping("t_user_role", UserRole.class);
        activeRecordPlugin.addMapping("t_role_permission", RolePermission.class);
        activeRecordPlugin.addMapping("t_group", Group.class);
        activeRecordPlugin.addMapping("t_topic", Topic.class);
        activeRecordPlugin.addMapping("t_reply", Reply.class);
        activeRecordPlugin.addMapping("t_apply", Apply.class);
        activeRecordPlugin.addMapping("t_applystep", Applystep.class);
        activeRecordPlugin.addMapping("t_file", DFile.class);
        activeRecordPlugin.addMapping("t_country", Country.class);

    }

    @Override
    public void configInterceptor(Interceptors me) {
        //me.add(new AuthInterceptor());
        me.add(new ParameterInterceptor());
    }

    @Override
    public void configHandler(Handlers me) {

    }
}
