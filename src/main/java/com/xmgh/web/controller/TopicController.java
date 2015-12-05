package com.xmgh.web.controller;

import com.jfinal.plugin.activerecord.DbKit;
import com.jfinal.plugin.activerecord.DbPro;
import com.jfinal.plugin.activerecord.Page;
import com.xmgh.web.domain.Article;
import com.xmgh.web.domain.Reply;
import com.xmgh.web.domain.Topic;
import com.xmgh.web.domain.Topic;
import com.xmgh.web.util.ParaKit;

import java.util.Date;
import java.util.List;

/**
 * Created by root on 2015/9/19.
 */
public class TopicController extends BaseController {
    private static final Topic dao = Topic.dao;
    public void index() {
        render("/article.html");
    }

    public void addOrUpdate() {
        Topic topic = new Topic();

        topic.set("id", ParaKit.forceInteger(getPara("id")));
        topic.set("title", getPara("title"));
        topic.set("author", getPara("author"));
        topic.set("content", getPara("content"));
        topic.set("time", new Date());
        topic.set("type", getPara("type"));
        topic.set("belong", getPara("belong"));

        Topic tic = Topic.dao.findById(ParaKit.forceInteger(getPara("id")));
        boolean success = false;
        if(tic == null) {
            success = topic.save();
        } else {
            success = topic.update();
        }

        renderSuccessFlag(success);
    }

    public void del() {
        int id = ParaKit.forceInteger(getPara("id"));
        boolean success = Topic.dao.deleteById(id);

        renderSuccessFlag(success);
    }

    public void findByID() {
        Topic topic = Topic.dao.findById(ParaKit.forceInteger(getPara("id")));
        renderJson(topic);
    }

    public void getTopics() {
        List<Topic> topics = Topic.dao.find("select * from t_topic");
        renderJson(topics);
    }

    public void getTopicsPaginate() {
        int pageNum = ParaKit.forceInteger(getPara("pageNum"));
        int pageSize = ParaKit.forceInteger(getPara("pageSize"));
        Page<Topic> paginate = Topic.dao.paginate(pageNum, pageSize, "select *", "from t_topic");
        renderJson(paginate);
    }

    public void getTopicsByUser() {
        List<Topic> topics = Topic.dao.find("select * from t_topic where author="+ParaKit.forceInteger(getPara("author")));
        renderJson(topics);
    }

    public void getTopicsByUserPaginate() {
        int pageNum = ParaKit.forceInteger(getPara("pageNum"));
        int pageSize = ParaKit.forceInteger(getPara("pageSize"));
        pageSize = pageSize>0? pageSize:10;
        Page<Topic> paginate = Topic.dao.paginate(pageNum, pageSize, "select *", "from t_topic where author="+ParaKit.forceInteger(getPara("author")));
        renderJson(paginate);
    }

    public void list() {
        render("/article.html");
    }

    public void seeTopic() {
        int tid = ParaKit.forceInteger(getPara("id"));
        Topic topic = Topic.dao.findById(tid);
        List<Reply> replys = Reply.dao.find("select * from t_reply where topicid="+tid);
        setAttr("topic", topic);
        setAttr("replys", replys);
        renderJsp("/admin/seeTopic.jsp");
    }

    public void reply() {
        int topicid = ParaKit.forceInteger(getPara("topicid"));
        String content = getPara("content");
        Reply reply = new Reply();

        reply.set("topicid", topicid);
        reply.set("content", content);
        reply.set("time", new Date());
        reply.set("author", 0);
        reply.set("prid", 0);

        reply.save();

        renderJson(reply);
    }
}
