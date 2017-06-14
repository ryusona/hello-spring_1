package test.spring.ryu.dao;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import test.spring.ryu.model.Article;


/**
 * Created by danawacomputer on 2017-06-14.
 */
public class TestArticleDao {

    private ApplicationContext context;

    //innit 공통적으로 수행함
    @Before
    public void init() {

       context= new ClassPathXmlApplicationContext(
                        "classpath:spring/db.xml",
                        "classpath:spring/applicationContext.xml");

//        ArticleDao dao = context.getBean("articleDao", ArticleDao.class);
//        dao.insertArticle(new Article());

    }

    // 이런걸 test 케이스 라고 한다.
    @Test
    public void testGetSum() {

        ArticleDao dao = context.getBean("articleDao", ArticleDao.class);
        int result = dao.getSum(3,5);

        Assert.assertEquals(5, result);
    }


    @Test
    public void testInsertArticle() {

    }

}
