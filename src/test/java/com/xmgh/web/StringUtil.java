package com.xmgh.web;

/**
 * Created by root on 2015/9/19.
 */
public class StringUtil {
    //����ĸ��д
    static String upperCaseStart(String target) {
        if(target != null && !"".equals(target)) {
            return target.substring(0, 1).toUpperCase() + target.substring(1);
        } {
            return target;
        }
    }

    //����Ҫ�Ա����ƽ��д���t_user --> User
    static String dealTableName(String name) {
        if(name.indexOf("_") >= 0) {
            name = name.substring(name.indexOf("_")+1);
        }
        return upperCaseStart(name);
    }
}
