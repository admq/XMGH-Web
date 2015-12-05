package com.xmgh.web;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by root on 2015/9/19.
 * 数据库数据类型和Java对象属性类型映射
 */
public class TypeMap {
    private static Map<String, String> map;
    static {
        map = new HashMap<String, String>();

        map.put("INT", "Integer");
        map.put("FLOAT", "Float");
        map.put("DOUBLE", "Double");
        map.put("VARCHAR", "String");
        map.put("TEXT", "String");
        map.put("DATE", "Date");
        map.put("DATETIME", "Date");
    }
    public static String get(String s) {
        return map.get(s);
    }
}
