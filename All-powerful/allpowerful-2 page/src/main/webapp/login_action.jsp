<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Action</title>
</head>
<body>
    <%
        String id = request.getParameter("id");
        String password = request.getParameter("password");

        if (id == null || password == null || id.isEmpty() || password.isEmpty()) {
            out.println("ID or Password is missing.");
            return;
        }

        String dbURL = "jdbc:mysql://127.0.0.1:3306/work?useSSL=false"; // 데이터베이스 URL 수정 필요
        String dbUser = "root"; // 데이터베이스 사용자명 수정 필요
        String dbPassword = "password"; // 데이터베이스 비밀번호 수정 필요

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            // JDBC 드라이버 로드
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 데이터베이스 연결
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // SQL 쿼리 준비
            String sql = "SELECT * FROM users WHERE id=? AND password=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, password);

            // 쿼리 실행
            rs = pstmt.executeQuery();

            // 로그인 성공 여부 확인
            if (rs.next()) {
                out.println("Login Successful");
                // 로그인 성공 시 세션에 사용자 ID 저장
                session.setAttribute("id", id);
                // 성공 시 리다이렉트
                response.sendRedirect("index.jsp");
            } else {
                out.println("Failed Login: Incorrect ID or Password.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("An error occurred: " + e.getMessage());
        } finally {
            // 자원 정리
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>
</body>
</html>
