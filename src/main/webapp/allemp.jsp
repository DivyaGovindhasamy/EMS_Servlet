<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Employee Page</title>
<style type="text/css">
#createbut{
	margin-left: 70%;

}

</style>
</head>
<body>
	<h1 style="text-align:center;">All Employee</h1>
	
	<a  id="createbut"href="reg.jsp"><button>Create</button></a>
	
	<center><h2><%= session.getAttribute("name") %></h2></center>	
	<table border="3"align="center"cellpadding="10"rules="all">
	<thead>
	<tr>
	<th>ID</th>
	<th>Name</th>
	<th>Salary</th>
	<th>Email</th>
	<th>Password</th>
	<th>Department No</th>
	<th colspan="3">Action</th>
	</tr>
	</thead>
	
	<%
	ResultSet rs = (ResultSet) request.getAttribute("rs");
	while(rs.next()){
	%>	
	<tr>
	<td><%= rs.getInt(1)     %></td>
	<td><%= rs.getString(2)  %></td>
	<td><%= rs.getDouble(3)  %></td>
	<td><%= rs.getString(4)  %></td>
	<td><%= rs.getString(5)  %></td>
	<td><%= rs.getInt(6)     %></td>
	<td><a href="delete?id=<%= rs.getString(1)%>"><button>Delete</button></a>
	<td><a href="update.jsp?id=<%= rs.getString(1)%>"><button>Update</button></a>
	</td>
	</tr>
	
	
	
	<%
		}
	%>
	
	</table>
	<br>
	<br>
	<hr>
	<a href="insta"><button>Instagram</button></a>
	<a href="linkedin"><button>LinkedIn</button></a>
	
	<br>
	<br>
	<center><a href="logout"><button>Logout</button></a></center>
	<script type="text/javascript">
	const msgEle = document.getElementById("msg");
	setTimeout(() => {
		msgEle.style.display="none"
	}, 3000);	
	
	</script>
	</body>
	</html>