<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    101<br>
    Balu<br>
    88<br>

    <%
        String url = "jdbc:mysql://localhost:3306/databaseName";
        String username = "root";
        String password = "venkataramana";
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        String sql = "select * from rol where id=3";
        Connection con = DriverManager.getConnection(url, username, password);
        Statement st = con.createStatement();
        
        ResultSet rs = st.executeQuery(sql);
        rs.next();
    %>

    Roll no : <%= rs.getString(1) %> <br>
    Name : <%= rs.getString(2) %> <br>
    Marks : <%= rs.getString(3) %> 

</body>
</html>
