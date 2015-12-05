package com.xmgh.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.*;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.realm.jdbc.JdbcRealm;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.junit.Assert;
import org.junit.Test;

/**
 * Created by root on 2015/9/21.
 */
public class ShiroHello {
    @Test
    public void testHelloWorld() {
        //1 获取SecurityManager工厂
        Factory<org.apache.shiro.mgt.SecurityManager> securityManagerFactory = new IniSecurityManagerFactory("classpath:shiro.ini");
        //2 得到SecurityManager实例
        SecurityManager securityManager = securityManagerFactory.getInstance();
        SecurityUtils.setSecurityManager(securityManager);
        //3 得到subject及创建用户名/密码 Token
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken("zhang", "123");
        //4 验证
        try {
            subject.login(token);
        } catch (AuthenticationException e) {
            e.printStackTrace();
        }

        Assert.assertEquals(true, subject.isAuthenticated());

        //5 退出
        subject.logout();
    }

    @Test
    public void jdbcShiro() {
        Factory<SecurityManager> securityManagerFactory = new IniSecurityManagerFactory("classpath:shiro-jdbc-realm.ini");
        SecurityManager securityManager = securityManagerFactory.getInstance();
        SecurityUtils.setSecurityManager(securityManager);
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken("user", "user");

        subject.login(token);

        Assert.assertEquals(true, subject.isAuthenticated());

        subject.logout();

    }
}
