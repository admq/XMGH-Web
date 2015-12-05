package com.xmgh.web.domain;

import com.jfinal.plugin.activerecord.Model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by root on 2015/9/24.
 */
public class Permission extends Model<Permission> {
    public static final Permission dao = new Permission();


    public List<Permission> findByUsername(String username) {
        String sql = "select tp.name name from t_permission tp " +
                     "left join t_role_permission trp on trp.permissionid=tp.id " +
                     "left join t_role tr on tr.id=trp.roleid " +
                     "left join t_user_role tur on tur.roleid=tr.id " +
                     "left join t_user tu on tu.id=tur.userid " +
                     "left join t_login tl on tl.name=tu.name " +
                     "where tl.name=?";
        List<Permission> permissions = dao.find(sql, username);
        return permissions==null? new ArrayList<Permission>() : permissions;
    }

    public List<String> findPermissioinNamesByUsername(String username) {
        List<Permission> permissioins = findByUsername(username);
        List<String> strPermissions = new ArrayList<String>();

        for (Permission permission: permissioins) {
            strPermissions.add((String)permission.get("name"));
        }
        return strPermissions;
    }
}
