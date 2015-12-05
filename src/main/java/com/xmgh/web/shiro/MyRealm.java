package com.xmgh.web.shiro;

import com.xmgh.web.domain.Login;
import com.xmgh.web.domain.Permission;
import com.xmgh.web.domain.Role;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import java.util.HashSet;

/**
 * Created by root on 2015/9/25.
 */
public class MyRealm extends AuthorizingRealm {

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        String username = (String)principals.getPrimaryPrincipal();

        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        authorizationInfo.setRoles(new HashSet(Role.dao.findRoleNamesByUsername(username)));
        authorizationInfo.setStringPermissions(new HashSet(Permission.dao.findPermissioinNamesByUsername(username)));

        System.out.println("doGetAuthorizationInfo:" + authorizationInfo.getRoles() + " " + authorizationInfo.getStringPermissions());
        return authorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String username = (String)token.getPrincipal();

        String password = Login.dao.findPasswordByUsername(username);

        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(username, password, getName());

        System.out.println("doGetAuthenticationInfo:" + authenticationInfo.getPrincipals());
        return authenticationInfo;
    }
}