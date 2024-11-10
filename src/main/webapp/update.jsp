<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
</head>
<body>
<%
Connection con= null;
PreparedStatement ps =null;
ResultSet rs= null;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","root");
	ps=con.prepareStatement("select * from emp where id=?");
	String sid = request.getParameter("id");
	int id=Integer.parseInt(sid);
	ps.setInt(1, id);
	rs=ps.executeQuery();
	rs.next();
}
catch(Exception e){
	e.printStackTrace();
}



%>
	<center><h2><%= session.getAttribute("name") %></h2></center>	
	<h1 style="text-align:center;">Update page</h1>
	<form action="update" method="post" align="center">
	<label><b>ID</b></label>
	<input type="number" value="<%=rs.getInt(1) %>" name="id" placeholder="Enter New ID"><br><br>
	<label><b>Username</b></label>
	<input type="text" value="<%=rs.getString(2) %>" name="name" placeholder="Enter New Username"><br><br>
	<label><b>Salary</b></label>
	<input type="text" value="<%=rs.getDouble(3) %>" name="salary" placeholder="Enter the New salary"><br><br>
	<label><b>Email</b></label>
	<input type="email" value="<%=rs.getString(4) %>" name="email" placeholder="Enter New Email"><br><br>
	<label><b>password</b></label>
	<input type="password"  value="<%=rs.getString(5) %>" name="password" placeholder="Enter the New password"><br><br>
	<label><b>DNO</b></label>
	<input type="number"  value="<%=rs.getInt(6) %>" name="dno" placeholder="Enter the  New DNO">
	<br><br>
	<button type="submit">Update</button>
	
	
	</form>
</body>
</html>