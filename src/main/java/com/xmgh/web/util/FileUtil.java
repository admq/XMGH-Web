package com.xmgh.web.util;

import com.jfinal.kit.FileKit;

import java.util.Calendar;

/**
 * Created by larry on 15/12/5.
 */
public class FileUtil extends FileKit {
    /**
     * 获取文件后缀名
     * @param fileName
     * @return
     */
    public static String getFileExt(String fileName) {
        int last = fileName.lastIndexOf(".");
        return fileName.substring(last);
    }

    /**
     * 根据给定的文件名,获取时间戳文件名
     * @param fileName
     * @return
     */
    public static String getTimeStampFileName(String fileName) {
        String ext = getFileExt(fileName);
        return Calendar.getInstance().getTimeInMillis() + ext;
    }
}
