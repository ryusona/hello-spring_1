package test.spring.ryu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import test.spring.ryu.dao.ArticleDao;
import test.spring.ryu.model.Article;

import java.util.List;

/**
 * Created by danawacomputer on 2017-06-14.
 */

@Component
public class BbsService {

    @Autowired
    private ArticleDao dao; // 에러남

    // 글쓰기 @param article
    public void registArticle(Article article) {
//        ArticleDao dao = new ArticleDao();
        dao.insertArticle(article);
    }

    // 글전체보기 @return 전체 글
    public List<Article> viewArticles() {
        return null;
    }

    // 상세 글보기 @param articleId 글 번호 @return 글 객체체
    public Article viewArticle(String articleId) {
        return null;
    }
}
