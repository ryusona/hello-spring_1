package test.spring.ryu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import test.spring.ryu.common.MockArticle;
import test.spring.ryu.model.Article;

import java.util.List;

/**
 * Created by danawacomputer on 2017-06-13.
 */
@Controller
public class BsLolController {

        @RequestMapping("/asset")
        public ModelAndView viewAll() {

            // 전체보기를 하기위한 데이터를 가져온다.
            MockArticle mock = new MockArticle();
            List<Article> list = mock.getArticles();

            return new ModelAndView("asset/view_all")
                    .addObject("list", list);  // 이쁘게 넘기는법
        }



        @RequestMapping("/asset/{articleId}") // <- 경로 변수 글자를 변수로 사용가능! 이 번호같은걸 가지고 db에서 값조회가능
        public ModelAndView viewDetail(@PathVariable("articleId") String articleId) { // 이거 PathVariable 유의하셈

            MockArticle mock = new MockArticle();
            List<Article> list = mock.getArticles();

            ModelAndView mav = new ModelAndView();
            mav.setViewName("asset/view_detail");
            mav.addObject("list", list);

            // 제목, 내용
            return mav;
        }

        @RequestMapping(value = "/asset/write", method = RequestMethod.GET)
         public String mainPage() { return "asset/bs_write"; }

//        @RequestMapping(value = "/asset/write", method = RequestMethod.POST)
//        public ModelAndView submitPage(Article article){
//
//            ModelAndView mav = new ModelAndView();
//            mav.setViewName("asset/submit_page");
//            mav.addObject("article",article);
//
//            return mav;
//        }

}
