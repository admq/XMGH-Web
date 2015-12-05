package com.xmgh.web.controller;

import com.xmgh.web.domain.Apply;
import com.xmgh.web.domain.Applystep;
import com.xmgh.web.util.SessionKit;

import java.util.List;

/**
 * Created by larry on 10/6/15.
 */
public class ApplyController extends BaseController {
    /**
     * 处理申请步骤提交
     */
    public void apply() {
        Integer applyStepID = getParaToInt("applyStepid");
        Integer userID = SessionKit.getCurrentUser().get("id");
        Integer fileID = getParaToInt("fileid");
        Integer id = getParaToInt("id");

        Apply apply = new Apply();
        apply.set("stepid", applyStepID);
        apply.set("userid", userID);
        apply.set("fileid", fileID);
        apply.set("state", 1);

        if(id == null) {
            renderSuccessFlag(apply.save());
        } else {
            apply.set("id", id);
            renderSuccessFlag(apply.update());
        }
    }

    /**
     * 获取所有的申请步骤
     */
    public void getApplySteps() {
        List<Applystep> applysteps = Applystep.dao.find("select * from t_applystep");
        renderJson(applysteps);
    }

    /**
     * 添加或者更新ApplyStep
     */
    public void addOrUpdateAppyStep() {
        boolean success = false;

        Integer id = getParaToInt("id");
        String describe = getPara("describe");
        Integer type = getParaToInt("type");

        Applystep applystep = new Applystep();
        applystep.set("describe", describe);
        applystep.set("type", type);

        if(id == null) {
            // 添加记录
            if(applystep.save()) success = true;
        } else {
            // 更新记录
            applystep.set("id", id);
            if(applystep.update()) success = true;
        }

        renderSuccessFlag(success);
    }

    /**
     * 删除ApplyStep
     * 根据id删除
     */
    public void delApplyStep() {
        Integer id = getParaToInt("id");
        renderSuccessFlag(Applystep.dao.deleteById(id));
    }
}
