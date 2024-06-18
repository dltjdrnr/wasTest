<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Parameter Info</title>
</head>
<body>
    <h1>전달된 파라미터 정보</h1>
    <%
        // 파라미터 이름을 받아옵니다.
        String paramName = request.getParameter("username");
        String se = (String) session.getAttribute("username");
        // 받아온 파라미터가 null이 아니라면 화면에 출력합니다.
        if (paramName != null) {
    %>
            <p>전달된 파라미터 이름: <%= paramName %></p>
    <%
        } else {
    %>
            <p>파라미터가 전달되지 않았습니다.</p>
    <%
        }
    %>
            <p>전달된 session 이름: <%= se %></p>
</body>
</html>

