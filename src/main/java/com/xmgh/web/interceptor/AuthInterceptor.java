package com.xmgh.web.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;

/**
 * Created by root on 2015/9/23.
 */
public class AuthInterceptor implements Interceptor{
    public void intercept(Invocation inv) {

        Subject subject = SecurityUtils.getSubject();
        if(subject.getSession().getAttribute("username") != null) {
            inv.invoke();
        } else {
            String erro = "";

            String name = inv.getController().getPara("name");
            String pass = inv.getController().getPara("pass");
            UsernamePasswordToken token = new UsernamePasswordToken(name, pass);
            try {
                subject.login(token);
            } catch (UnknownAccountException e) {
                erro = "用户名/密码错误";
            } catch (IncorrectCredentialsException e) {
                erro = "用户名/密码错误";
            } catch (AuthenticationException e) {
                erro = "其他错误:" +e.getMessage();
            }
            subject.getSession().setAttribute("username", name);
            if(!"".equals(erro)) {
                inv.getController().render("/login.html");
            } else {
                inv.invoke();
            }
        }

    }
}
