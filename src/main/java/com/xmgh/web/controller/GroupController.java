package com.xmgh.web.controller;

import com.jfinal.plugin.activerecord.Page;
import com.xmgh.web.domain.Article;
import com.xmgh.web.domain.Articletype;
import com.xmgh.web.domain.Group;
import com.xmgh.web.domain.Topic;
import com.xmgh.web.util.ParaKit;
import com.xmgh.web.util.SqlKit;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**z
 * Created by root on 2015/9/19.
 */
public class GroupController extends BaseController {
    private static final Group dao = Group.dao;
    public void index() {
        render("/article.html");
    }

    public void addOrUpdate() {
        Group group = new Group();


        group.set("id", null);
        group.set("name", getPara("name"));
        group.set("schoolid", getPara("schoolid"));
        group.set("describe", getPara("describe"));
        group.set("createtime", new Date());

        boolean success = false;
        if(getPara("id") != null) {
            group.set("id", ParaKit.forceInteger(getPara("id")));
            Group grp = Group.dao.findById(ParaKit.forceInteger(getPara("id")));
            if(grp == null) {
                success = group.save();
            } else {
                success = group.update();
            }
        } else {
            success = group.save();
        }



        renderSuccessFlag(success);
    }

    public void del() {
        boolean success = Group.dao.deleteById(ParaKit.forceInteger(getPara("id")));
        renderSuccessFlag(success);
    }

    public void findByID() {
        Group group = Group.dao.findById(ParaKit.forceInteger(getPara("id")));
        renderJson(group);
    }

    public void getGroups() {
        List<Group> groups = Group.dao.find("select * from t_group");
        renderJson(groups);
    }

    public void getGroupsPaginate() {
        int pageNum = ParaKit.forceInteger(getPara("pageNum"));
        int pageSize = ParaKit.forceInteger(getPara("pageSize"));
        Page<Group> paginate = Group.dao.paginate(pageNum, pageSize, "select g.*,s.name as schoolname", "from t_group g left join t_school s on s.id=g.schoolid");
        renderJson(paginate);
    }

    public void getGroupsByUser() {
        List<Group> groups = Group.dao.find("select * from t_group where author="+ParaKit.forceInteger(getPara("author")));
        renderJson(groups);
    }

    public void getGroupsByUserPaginate() {
        int pageNum = ParaKit.forceInteger(getPara("pageNum"));
        int pageSize = ParaKit.forceInteger(getPara("pageSize"));
        pageSize = pageSize>0? pageSize:10;
        Page<Group> paginate = Group.dao.paginate(pageNum, pageSize, "select *", "from t_group where author="+ParaKit.forceInteger(getPara("author")));
        renderJson(paginate);
    }


    public void list() {
        render("/article.html");
    }

    public void goInGroup() {
        int gid = ParaKit.forceInteger(getPara("id"));
        List<Topic> topics = Topic.dao.find("select * from t_topic where belong="+gid+" order by useful desc");
        Group group = Group.dao.findById(gid);
        setAttr("topics", topics);
        setAttr("group", group);
        renderJsp("/admin/topic_list.jsp");
    }
}
