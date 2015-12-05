package com.xmgh.web.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import org.apache.shiro.authc.AuthenticationException;

/**
 * Created by root on 2015/9/19.
 */
public class ParameterInterceptor implements Interceptor{
    public void intercept(Invocation inv) {
        Object[] args = inv.getArgs();

        /*javax.servlet.http.HttpServletRequest request = inv.getController().getRequest();
        String requestURI = request.getRequestURI();
        StringBuffer requestURL = request.getRequestURL();
        System.out.println(requestURI + ":" + requestURL);*/

        for(Object obj : args) {
            System.out.println(obj);
        }

        try {

            inv.invoke();

        } catch (AuthenticationException e) {
            inv.getController().render("/err.html");
        }
    }
}
