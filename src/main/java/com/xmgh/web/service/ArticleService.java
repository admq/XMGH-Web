package com.xmgh.web.service;

import com.xmgh.web.domain.Article;
import com.xmgh.web.domain.Articletype;

import java.util.List;

/**
 * Created by larry on 10/13/15.
 */
public class ArticleService {
    private Article articleDao = Article.dao;

    /**
     * 获取文章所有类型
     * @return
     */
    public List<Articletype> articleType() {
        List<Articletype> articletypes = Articletype.dao.find("select * from t_articletype");
        return articletypes;
    }

    public Article getArticleByID(Integer id) {
        return articleDao.findById(id);
    }
}
