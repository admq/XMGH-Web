package com.xmgh.web.controller;

import com.jfinal.core.Controller;

/**
 * Created by root on 2015/9/19.
 */
public class BaseController extends Controller {

    public void renderSuccessFlag(boolean flag) {
        renderJson("{\"success\":\"" + flag + "\"}");
    }
}
