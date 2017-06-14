<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: danawacomputer
  Date: 2017-06-09
  Time: 오후 5:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/asset/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/asset/css/dashboard.css" rel="stylesheet">
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">LEE KB</a></li>
                <li><a href="#">LEE JS</a></li>
                <li><a href="#">RYU KR</a></li>
                <li><a href="#">JIN HY</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="#">Overview <span class="sr-only">(current)</span></a></li>
                <li><a href="#">Reports</a></li>
                <li><a href="#">Analytics</a></li>
                <li><a href="#">Export</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="">Nav item</a></li>
                <li><a href="">Nav item again</a></li>
                <li><a href="">One more nav</a></li>
                <li><a href="">Another nav item</a></li>
                <li><a href="">More navigation</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="">Nav item again</a></li>
                <li><a href="">One more nav</a></li>
                <li><a href="">Another nav item</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Site Link</h1>
            <br><br>
            <div class="row placeholders">
                <div class="col-xs-6 col-sm-3 placeholder">
                    <a href="http://www.op.gg"><img src="/asset/img/op.gg.jpg"
                                                    width="200" height="200"
                                                    class="img-responsive"
                                                    alt="Generic placeholder thumbnail"></a>
                    <span class="text-muted">Something else</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <a href="http://lol.inven.co.kr"><img src="/asset/img/inven.jpg"
                                                    width="300" height="300"
                                                    class="img-responsive"
                                                          alt="Generic placeholder thumbnail"></a>

                    <span class="text-muted">Something else</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <a href="http://fow.kr"><img src="/asset/img/fow.jpg"
                                                          width="500" height="500"
                                                          class="img-responsive"
                                                          alt="Generic placeholder thumbnail"></a>

                    <span class="text-muted">Something else</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <a href="http://kr.leagueoflegends.com"><img src="/asset/img/lolhomepage.jpg"
                                                          width="200" height="200"
                                                          class="img-responsive"
                                                          alt="Generic placeholder thumbnail"></a>

                    <span class="text-muted">Something else</span>
                </div>
            </div>

            <h2 class="sub-header">자유 게시판</h2>
            <br>
            <form action="/asset/write" method="get">
            <input type="submit" value="글쓰기" class="btn btn-sm btn-success">
            </form>
            <%--<a href="/asset/write"> 글쓰기 </a>--%>
            <br>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="article" items="${list}">
                        <tr>

                            <td> ${article.articleId} </td>
                            <td>  <a href="/asset/${article.articleId}"> ${article.title}</td>
                            <td>  ${article.author} </td>

                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!--script 순서 중요, 아래 것들이 위에 것을 참조-->

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/asset/js/jquery-3.2.1.js"></script>
<script src="/asset/js/bootstrap.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="/assets/js/holder.min.js"></script>
</body>
</html>
