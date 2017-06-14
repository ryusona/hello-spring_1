<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: danawacomputer
  Date: 2017-06-13
  Time: 오후 4:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>bs_read</title>
</head>
<body>
<h1> 자유게시판 입니다. </h1>
<br>
<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"> 자유게시판 </div>
    <!-- Table -->
    <table class="table">

        <tr>
            <td rowspan="2"> 작성자 </td>
            <td>   제목   </td>
        </tr>
        <tr>
            <td> 내용 </td>
        </tr>

    </table>
</div>

<br>
<a href="/asset/write"> 글쓰기 $nbsp</a>
<a href="/asset/write"> 댓글 </a>
<a href="/asset/write"> 수정 </a>
<a href="/asset/write"> 목록 </a>



<script src="/asset/js/jquery-3.2.1.js"></script>
<script src="/asset/js/bootstrap.js"></script>

</body>
</html>
