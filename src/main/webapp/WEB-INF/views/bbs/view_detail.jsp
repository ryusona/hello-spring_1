<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: danawacomputer
  Date: 2017-06-12
  Time: 오후 4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"> ${articleId}번 글이 조회되었습니다. </div>
    <!-- Table -->
    <table class="table">

        <tr>
            <td> 제목   </td>
            <td> 작성자 </td>
            <td> 내용   </td>
        </tr>
        <c:forEach var="article" items="${list}">
            <tr>
                <td>  <a href="/bbs/${article.articleId}"/> ${article.title}</td>
                <td>  ${article.author} </td>
                <td>  ${article.content} </td>
            </tr>
        </c:forEach>

    </table>
</div>

</body>
</html>
