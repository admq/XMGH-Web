package com.xmgh.web.controller;

import com.jfinal.plugin.activerecord.DbKit;
import com.jfinal.plugin.activerecord.Page;
import com.xmgh.web.domain.Article;
import com.xmgh.web.domain.Articletype;
import com.xmgh.web.util.ParaKit;
import com.xmgh.web.util.SqlKit;

import java.util.Date;
import java.util.List;
import java.util.Map;

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
        article.set("type", getPara("articletype"));
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
        int pageNum = ParaKit.forceInteger((getPara("pageNum")==null? "1":getPara("pageNum")));
        int pageSize = ParaKit.forceInteger((getPara("pageSize")==null? "3":getPara("pageSize")));
        //Page<Article> paginate = Article.dao.paginate(pageSize * (pageNum - 1)+1, pageSize, "select *", "from t_article");
        Page<Article> paginate = Article.dao.paginate(pageNum, pageSize, "select *", "from t_article");
        renderJson(paginate);
    }

    public void getArticleByUserPaginate() {
        int pageNum = ParaKit.forceInteger(getPara("pageNum"));
        int pageSize = ParaKit.forceInteger(getPara("pageSize"));
        pageSize = pageSize>0? pageSize:10;
        Page<Article> paginate = Article.dao.paginate(pageNum, pageSize, "select *", "from t_article where author="+ParaKit.forceInteger(getPara("author")));
        renderJson(paginate);
    }

    /**
     * 通过条件筛选，并以Json的形式返回，并且分页
     */
    public void getArticleByConditionInJsonWithPaginate() {
        Map<String, String> paraMap = ParaKit.parsePara(getPara("paraStr"));

        int pageNum = ParaKit.forceInteger(getPara("pageNum"));
        int pageSize = ParaKit.forceInteger(getPara("pageSize"));
        String sql = "from t_article " + SqlKit.genWhere(paraMap, true);

        Page<Article> articles = Article.dao.paginate(pageNum, pageSize, "select * ", sql);
        //Integer[] rei = ParaKit.parsePaginate(paraMap.get("page").substring(2));// [pageSize, pageNum]
        //Page<Article> articles = Article.dao.paginate(rei[0] * (rei[1] - 1) + 1, rei[0], "select * ", sql);
        renderJson(articles);
    }

    public void addArticleType() {
        String name = getPara("name");
        boolean success = false;
        if(name != null) {
            Articletype ex = Articletype.dao.findFirst("select * from t_articletype where name='" + name + "'");
            if(ex == null) {
                Articletype at = new Articletype();
                at.set("name", name);
                at.save();
                success = true;
            }
        } else {

        }
        renderSuccessFlag(success);
    }

    public void delArticleType() {
        String id = getPara("id");
        Articletype.dao.deleteById(id);
        renderSuccessFlag(true);
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
        Integer hot = article.get("hot")==null? 0:Integer.parseInt(article.get("hot").toString());
        article.set("hot", hot + 1);
        article.update();
        setAttr("title", article.get("title"));
        setAttr("content", article.get("content"));
        renderJsp("/seeArticle.jsp");
    }
}
