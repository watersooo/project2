<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<h1>DB</h2>
<%
    	Connection conn=null;
    	try{
            	String Url="jdbc:mariadb://127.0.0.1:3306/work";
            	String Id="root";
            	String Pass="password";
 
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection(Url,Id,Pass);
            	out.println("was-db Connection Success!");
    	}catch(Exception e) {
            	e.printStackTrace();
}
%>
