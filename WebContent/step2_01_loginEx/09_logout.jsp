<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
	<%
		session.invalidate();
	%>
	<script>
		alert("you are logged out");
		location.href="00_main.jsp";
	</script>
</body>
</html>