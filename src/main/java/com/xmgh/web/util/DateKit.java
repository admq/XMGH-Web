package com.xmgh.web.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by larry on 15/12/13.
 */
public class DateKit {
    private static String DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
    private static SimpleDateFormat sdf = null;

    static {
        sdf = new SimpleDateFormat(DATE_FORMAT);
    }

    public static String getFormatDateString(Date date) {
        return sdf.format(date);
    }

    public static String getFormatNowString() {
        return sdf.format(new Date());
    }
}
