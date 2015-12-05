package com.xmgh.web.controller;

import com.xmgh.web.domain.School;
import com.xmgh.web.util.ParaKit;

import java.util.List;

/**
 * Created by root on 2015/9/19.
 */
public class SchoolController extends BaseController {

    public void addOrUpdate() {
        School school = new School();
        school.set("name", getPara("name"));
        school.set("englishname", getPara("englishname"));
        school.set("shortname", getPara("shortname"));
        school.set("countryid", ParaKit.forceInteger(getPara("countryid")));
        school.set("type", ParaKit.forceInteger(getPara("type")));

        School identity = School.dao.findFirst("select * from t_school where name=" + getPara("name"));
        boolean success = false;
        if (identity == null) {
            success = school.save();
        } else {
            success = school.update();
        }

        renderSuccessFlag(success);
    }

    public void del() {
        boolean success = School.dao.deleteById(ParaKit.forceInteger(getPara("id")));
        renderSuccessFlag(success);
    }

    public void findByID() {
        School school = School.dao.findById(ParaKit.forceInteger(getPara("id")));
        renderJson(school);
    }


    public void getSchools() {
        String sql = "select sc.*,c.name countryname from t_school sc left join t_country c on sc.countryid=c.id";
        List<School> schools = School.dao.find(sql);
        renderJson(schools);
    }
}
