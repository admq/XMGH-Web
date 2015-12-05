package com.xmgh.web.controller;

import com.jfinal.kit.PathKit;
import com.jfinal.upload.UploadFile;
import com.xmgh.web.domain.DFile;
import com.xmgh.web.util.FileUtil;
import com.xmgh.web.util.SessionKit;
import java.io.File;

/**
 * Created by larry on 10/6/15.
 */
public class FileController extends BaseController {
    public void upload() {
        String saveDir = PathKit.getWebRootPath() + File.separator + "upload" + File.separator;
        UploadFile uploadFile = getFile("file", saveDir);
        String saveName = null;
        if(uploadFile != null) {
            saveName = FileUtil.getTimeStampFileName(uploadFile.getFileName());
            uploadFile.getFile().renameTo(new File(saveDir + saveName));
        }

        // 添加文件上传记录(t_file)
        DFile dFile = new DFile();
        dFile.set("userid", SessionKit.getCurrentUser().get("id"));
        dFile.set("filename", saveName);
        dFile.set("state", 1);
        dFile.save();

        renderJson("{\"fileSaveName\":\""+saveName+"\", \"fileid\":\""+dFile.get("id")+"\"}");
    }
}
