<%--
  Created by IntelliJ IDEA.
  User: danawacomputer
  Date: 2017-06-12
  Time: 오후 7:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>submit_page</title>
</head>
<body>
<h1>다음과 같이 등록 되었습니다. <br> </h1>
<ul>
    <li>${article.articleId}</li>
    <li>${article.title}</li>
    <li>${article.author}</li>
    <li>${article.content}</li>

    <a href="/bbs"> 전체 글보기</a>
</ul>

</body>
</html>
