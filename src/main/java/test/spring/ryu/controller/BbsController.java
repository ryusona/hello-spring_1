package test.spring.ryu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import test.spring.ryu.common.MockArticle;
import test.spring.ryu.model.Article;
import test.spring.ryu.service.BbsService;

import java.util.List;

/**
 * Created by danawacomputer on 2017-06-12.
 */

@Controller
public class BbsController {

    @Autowired
    private BbsService service;

    @RequestMapping("/bbs")
    public ModelAndView viewAll() {

        // 전체보기를 하기위한 데이터를 가져온다.
        MockArticle mock = new MockArticle();
        List<Article> list = mock.getArticles();

        return new ModelAndView("bbs/view_all")
                .addObject("list", list);  // 이쁘게 넘기는법
    }

    @RequestMapping(value = "/bbs/write", method = RequestMethod.GET)
    public String mainPage() { return "bbs/main_page";}

    @RequestMapping("/bbs/{articleId}") // <- 경로 변수 글자를 변수로 사용가능! 이 번호같은걸 가지고 db에서 값조회가능
    public ModelAndView viewDetail(@PathVariable("articleId") String articleId) { // 이거 PathVariable 유의하셈



        // 제목, 내용
        return new ModelAndView("bbs/view_detail").addObject("articleId", articleId);
    }

    @RequestMapping(value = "/bbs/write", method = RequestMethod.POST)
    public ModelAndView submitPage(Article article){

        System.out.println(article);

//        BbsService service = new BbsService(); // 요렇게 하면 돌아간댱 ㅇㅁㅇ!!!

        service.registArticle(article);

        return new ModelAndView("bbs/submit_page").addObject("article", article);
    }

//
//    @RequestMapping(value = "/bbs/write", method = RequestMethod.POST)
//    public ModelAndView submitPage(Article article){
//
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("bbs/submit_page");
//        mav.addObject("article",article);
//
//        System.out.println(article.getArticleId());
//        System.out.println(article.getTitle());
//        System.out.println(article.getAuthor());
//        System.out.println(article.getContent());
//
//        return mav;
//    }

}
