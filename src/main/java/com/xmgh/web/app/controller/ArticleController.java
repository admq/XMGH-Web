package com.xmgh.web.app.controller;

import com.jfinal.plugin.activerecord.Page;
import com.xmgh.web.controller.BaseController;
import com.xmgh.web.domain.Article;
import com.xmgh.web.domain.Articletype;
import com.xmgh.web.util.ParaKit;

import java.util.Date;
import java.util.List;

/**z
 * Created by root on 2015/9/19.
 */
public class ArticleController extends BaseController {
    public void index() {
        render("/article.html");
    }

    public void addOrUpdate() {
        Article article = new Article();

        article.set("id", ParaKit.forceInteger(getPara("id")));
        article.set("title", getPara("title"));
        article.set("author", getPara("author"));
        article.set("type", getPara("type"));
        article.set("content", getPara("content"));
        article.set("time", new Date());

        Article art = Article.dao.findById(ParaKit.forceInteger(getPara("id")));
        boolean success = false;
        if(art == null) {
            success = article.save();
        } else {
            success = article.update();
        }

        renderSuccessFlag(success);
    }

    public void del() {
        boolean success = Article.dao.deleteById(ParaKit.forceInteger(getPara("id")));
        renderSuccessFlag(success);
    }

    public void findByID() {
        Article article = Article.dao.findById(ParaKit.forceInteger(getPara("id")));
        renderJson(article);
    }

    public void getArticles() {
        List<Article> articles = Article.dao.find("select * from t_article");
        renderJson(articles);
    }

    public void getArticleByUser() {
        List<Article> articles = Article.dao.find("select * from t_article where author="+ParaKit.forceInteger(getPara("author")));
        renderJson(articles);
    }

    public void getArticlesPaginate() {
        int pageNum = ParaKit.forceInteger(getPara("pageNum"));
        int pageSize = ParaKit.forceInteger(getPara("pageSize"));
        pageSize = pageSize>0? pageSize:10;
        Page<Article> paginate = Article.dao.paginate(pageSize * (pageNum - 1)+1, pageSize, "select *", "from t_article");
        renderJson(paginate);
    }

    public void getArticleByUserPaginate() {
        int pageNum = ParaKit.forceInteger(getPara("pageNum"));
        int pageSize = ParaKit.forceInteger(getPara("pageSize"));
        pageSize = pageSize>0? pageSize:10;
        Page<Article> paginate = Article.dao.paginate(pageSize * (pageNum - 1)+1, pageSize, "select *", "from t_article where author="+ParaKit.forceInteger(getPara("author")));
        renderJson(paginate);
    }

    public void getArticleTypes() {
        List<Articletype> articletypes = Articletype.dao.find("select * from t_articletype");
        renderJson(articletypes);
    }

    public void list() {
        render("/article.html");
    }

    public void seeArticle() {
        Article article = Article.dao.findById(ParaKit.forceInteger(getPara("id")));
        setAttr("title", article.get("title"));
        setAttr("content", article.get("content"));
        renderJsp("/seeArticle.jsp");
    }
}
