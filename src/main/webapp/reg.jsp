<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
</head>
<body>
<center><h2><%= session.getAttribute("name") %></h2></center>
<h1 style="text-align:center;">Register here</h1>
<form action="reg" method="post" align="center">
<div>
	<label><b>ID : </b></label>
	<input type="number" name="id" placeholder="Enter ID"><br><br>
	<label><b>Username: </b></label>
	<input type="text" name="name" placeholder="Enter Username"><br><br>
	<label><b>Salary: </b></label>
	<input type="number" name="salary" placeholder="Enter the salary"><br><br>
	<label><b>Email: </b></label>
	<input type="email" name="email" placeholder="Enter Email"><br><br>
	<label><b>password: </b></label>
	<input type="password" name="password" placeholder="Enter the password"><br><br>
	<label><b>DapartmentNo: </b></label>
	<input type="number" name="dno" placeholder="Enter the DNO">
	<br>
	<br>
	<button type="submit">Register</button>
</div>
</form>


</body>
</html>