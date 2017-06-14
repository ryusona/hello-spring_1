package test.spring.ryu.dao;

import com.sun.corba.se.pept.transport.ConnectionCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import test.spring.ryu.model.Article;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by danawacomputer on 2017-06-14.
 */

@Repository
public class ArticleDao {

    @Autowired
    private DataSource dataSource;

    public int getSum(int a, int b) {

        return a + b;

    }

    public void insertArticle(Article article){
        // 실제 db와 connect

        try {
            Connection conn = dataSource.getConnection();
            System.out.println("connection ok...");

            conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {

        }

    }
}
