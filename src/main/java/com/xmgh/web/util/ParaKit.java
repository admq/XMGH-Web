package com.xmgh.web.util;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * Created by root on 2015/9/19.
 */
public class ParaKit {
    public static Integer forceInteger(String target) {
        if(target != null && !"".equals(target.trim())) {
            return Integer.parseInt(target);
        } else {
            return null;
        }
    }

    public static Map<String, String> parsePara(String paraStr) {
        Map<String,String> paraMap = new HashMap<String, String>();

        JSONObject jos = JSONObject.fromObject(paraStr);
        Iterator<String> iterator = jos.keySet().iterator();
        while (iterator.hasNext()) {
            String key = iterator.next();
            paraMap.put(key, jos.get(key).toString());
        }

        return paraMap;
    }

    public static Integer[] parsePaginate(String paginate) {
        String[] ps = paginate.split(",");
        Integer[] rei = {Integer.parseInt(ps[0]), Integer.parseInt(ps[1])};
        return rei;
    }
}
