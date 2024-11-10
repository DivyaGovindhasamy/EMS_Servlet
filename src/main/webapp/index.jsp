<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome page</title>
</head>
<body>
<h1>Welcome Page</h1>
<a href="reg.jsp"><button>click here to register</button></a>
<br>
<br>
<a href="allemp"><button>View All Employee</button></a>

<% response.sendRedirect("login.jsp"); %>

<script type="text/javascript">
	let msgEle = document.getElementById("msg");
	setTimeout(() => {
		msgEle.style.display ="none";
	}, 2000);

</script>
</body>
</html>