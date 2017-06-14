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
    <link rel="stylesheet" href="/asset/css/bootstrap.css"/>
</head>
<body>

<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"> ${articleId}번 글이 조회되었습니다. </div>

    <br>


    <!-- Table -->
    <table class="table">



            <tr>
                <td>  제목  : ${list[articleId-1].title}</td>

            </tr>
            <tr>
            </tr>
            <tr>
                <td> 작성자  : ${list[articleId-1].author} </td>
                <td> </td>
            </tr>
            <tr>
                <td>    </td>
                <td>    </td>
            </tr>
            <tr>
                <td> 내용  </td>
                <td>  </td>
            </tr>
            <tr>

                <td>  ${list[articleId-1].content} </td>
            </tr>


    </table>
</div>

</body>
</html>
