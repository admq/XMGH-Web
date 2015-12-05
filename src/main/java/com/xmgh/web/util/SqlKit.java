package com.xmgh.web.util;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * Created by larry on 10/14/15.
 */
public class SqlKit {
    public static String genWhere(Map<String,String> map, boolean paginate) {
        StringBuffer sqlsb = new StringBuffer();
        Iterator<String> iterator = map.keySet().iterator();
        sqlsb.append(" where 1=1 ");
        String limitStr = "";
        while (iterator.hasNext()) {
            String key = iterator.next();
            String val = map.get(key);
            if(val.startsWith("l")) {
                if(paginate) limitStr = " limit " + val.substring(2);
            } else {
                sqlsb.append(" and ");
                sqlsb.append(key).append("=");
                if (val.startsWith("s")) sqlsb.append("'");
                sqlsb.append(val.substring(2));
                if (val.startsWith("s")) sqlsb.append("'");
            }
        }
        sqlsb.append(limitStr);
        return sqlsb.toString();
    }
}
