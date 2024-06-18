<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연결 확인</title>
</head>
<body>
    <h1>DB 연결 확인</h1>
    
    <%-- JDBC 드라이버 클래스 로드 --%>
    <%@ page import="java.sql.DriverManager" %>
    
    <% 
    // 변수 선언
    String url = "jdbc:mysql://localhost:3306/woori";
    String username = "root";
    String password = "1234";
    String errMsg  = "";
    
    // 연결 확인을 위한 변수 선언
    boolean connected = false;
    
    try {
        // 데이터베이스에 연결
       // Class.forName("com.mysql.cj.jdbc.Driver");
	 Class.forName("com.mysql.jdbc.jdbc2.optional.MysqlConnectionPoolDataSource");
        DriverManager.getConnection(url, username, password);
        connected = true;
        // 연결 성공
    } catch (Exception e) {
        // 연결 실패
       // errMsg = e.printStackTrace();
	e.printStackTrace();
        connected = false;
    }
    %>
    
    <% if (connected) { %>
        <p>데이터베이스에 연결되었습니다.</p>
    <% } else { %>
        <p>데이터베이스 연결에 실패했습니다.</p>
    <% } %>
    
</body>
</html>

