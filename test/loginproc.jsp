<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Process</title>
    <style>
        /* 스타일 시트 생략 */
    </style>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String name = "";

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        // 데이터베이스 연결 정보 설정
        String url = "jdbc:mysql://localhost:3306/woori";
        String dbUsername = "root";
        String dbPassword = "1234";

        // 데이터베이스 연결
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, dbUsername, dbPassword);

        // SQL 쿼리 실행
        String sql = "SELECT * FROM user WHERE id = ? AND pw = ?";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, username);
        stmt.setString(2, password);
        rs = stmt.executeQuery();
	

        if (rs.next()) {
            // 인증 성공 시
            // 세션에 사용자 정보 저장 등 추가 작업 가능
            session.setAttribute("username", username);
	    name = rs.getString("name");
            // 로그인 성공 시 페이지 이동
            response.sendRedirect("param.jsp?username="+name);
        } else {
            // 인증 실패 시
            out.println("<p>Login failed. Invalid username or password.</p>");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // 데이터베이스 연결 해제
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>
</body>
</html>

