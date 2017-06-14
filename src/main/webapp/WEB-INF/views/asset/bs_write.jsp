<%--
  Created by IntelliJ IDEA.
  User: danawacomputer
  Date: 2017-06-13
  Time: 오후 4:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>bs_wirte</title>
</head>
<body>

<h1>작성하는곳</h1>

<table>
    <%--<caption>글 작성하기</caption>--%>
    <tr>
        <td>글 번호</td>
        <td><input type=text name=name size=10 maxlength=8></td>
    </tr>
    <tr>
        <td>글 제목</td>
        <td><input type=text name=email size=30></td>
    </tr>
    <tr>
        <td>글 작성자</td>
        <td><input type=text name=homepage size=30></td>
    </tr>
    <tr>
        <td>첨부파일</td>
        <td><input type=text name=title></td>
    </tr>
    <tr>
        <td>글 내용</td>
        <td><textarea name=content rows ="10" cols="100"></textarea></td>
    </tr>
    <tr>
        <td>추가내용</td>
        <td><input type=password name=password size=15 maxlength=15></td>
    </tr>
    <tr>
        <td colspan=2><hr size=1></td>
    </tr>
    <tr>
        <td colspan="2">
            <div align="center">
                <form action="/asset">
                    <input type="submit" value="완료" class="btn btn-lg btn-success"><%--&nbsp;&nbsp;--%>
                </form>

                <%--뒤로 버튼// 일단 없앰--%>
                <%--<form action="/asset">--%>
                    <%--<input type="submit" value="뒤로" class="btn btn-lg btn-fail">--%>
                <%--</form>--%>
            </div>
        </td>
    </tr>
</table>


<%--<a href="/bslol">최초화면</a>--%>

</body>
</html>



<%--&lt;%&ndash;--%>
  <%--Created by IntelliJ IDEA.--%>
  <%--User: danawacomputer--%>
  <%--Date: 2017-06-13--%>
  <%--Time: 오후 4:40--%>
  <%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<div class="jumbotron">--%>
    <%--<form action="/asset" method="post">--%>

        <%--<div class="input-group input-group-lg">--%>
            <%--<span class="input-group-addon">제목</span>--%>
            <%--<input type="text" name="title" class="form-control" placeholder="제목">--%>
        <%--</div>--%>
        <%--<div class="input-group input-group-lg">--%>
            <%--<span class="input-group-addon">작성자</span>--%>
            <%--<input type="text" name="author" class="form-control" placeholder="작성자">--%>
        <%--</div>--%>
        <%--<div class="input-group input-group-lg">--%>
            <%--<span class="input-group-addon">내용</span>--%>
            <%--<textarea name="content" class="form-control" placeholder="내용"></textarea>--%>
        <%--</div>--%>


        <%--<p><input type="submit" value="등록" class="btn btn-lg btn-success"></input></p>--%>
    <%--</form>--%>
    <%--<form action="/asset" method="post">--%>
        <%--<p><input type="submit" value="취소" class="btn btn-lg btn-fail"></input></p>--%>
    <%--</form>--%>
<%--</div>--%>


<%--</body>--%>
<%--</html>--%>
