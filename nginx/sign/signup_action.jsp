<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Join Action</title>
</head>
<body>
    <%
        // 사용자 입력값을 가져옵니다.
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        // 데이터베이스 연결 정보 설정
        String dbURL = "jdbc:mysql://127.0.0.1:3306/work?useSSL=false";
        String dbUser = "root";
        String dbPassword = "password";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // MySQL JDBC 드라이버 로드
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 데이터베이스 연결
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // SQL 쿼리 준비
            String sql = "INSERT INTO users (id, password, name, email) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, password); // 비밀번호를 해시화 하는 것이 좋습니다
            pstmt.setString(3, name);
            pstmt.setString(4, email);

            // 쿼리 실행
            int result = pstmt.executeUpdate();

            if (result > 0) {
                out.println("Join Successful");
            } else {
                out.println("Join Failed");
            }
        } catch (ClassNotFoundException e) {
            out.println("JDBC Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            out.println("SQL Error: " + e.getMessage());
        } finally {
            // 리소스 정리
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    out.println("Error closing PreparedStatement: " + e.getMessage());
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    out.println("Error closing Connection: " + e.getMessage());
                }
            }
        }
        response.sendRedirect("login.jsp");
    %>
</body>
</html>
