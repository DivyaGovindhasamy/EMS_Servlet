<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<meta charset="UTF-8">
<title>Login Page</title>

<style type="text/css" >
.form{
display:block;
height:35vh;
margin:50px auto;
width:25vw;
border: 2px solid;
background-color:orange;
box-shadow: 1px 1px 5px black;
}
.form h1{
text-align:center;
}
.form .main{
margin-left:50px;
}
.main input{
padding:5px;
width:15vw;
}
.main button{
margin-left:60px;
background-color:blue;
font-weight:bold;
padding:10px;
border-radius:5px;
color:white;
margin-top:20px
}
</style>
</head>
<body>
	<center><h2><%= session.getAttribute("name") %></h2></center>
	<div class="form">
	<h1>Login </h1>
	<form action="login" class="main" method="post">
		<input type="text" name="email" placeholder="Enter Email"> <br> <br>
		<input type="password" name="password" placeholder="Enter Password"> <br><br>
		<button type="submit">Login</button>
	</form>
	</div>
	
</body>
</html>