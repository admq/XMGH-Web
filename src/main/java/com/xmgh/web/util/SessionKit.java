package com.xmgh.web.util;

import com.xmgh.web.domain.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

/**
 * Created by larry on 15/12/5.
 */
public class SessionKit {

    public static User getCurrentUser() {
        Subject currentUser = SecurityUtils.getSubject();
        String userName = currentUser.getPrincipal().toString();
        return User.dao.find("select * from t_user where name='"+userName+"'").get(0);
    }
}
