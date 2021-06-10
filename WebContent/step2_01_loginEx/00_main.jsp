<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>

	<%
		String id =(String)session.getAttribute("id");
		
		if(id == null){
			
	
	%>
		<h1>JUST DO IT</h1>
		<p><a href="01_insert.jsp">join!</a><p>
		<p><a href="07_login.jsp">Login!</a><p>
	<%
		}
		else{
	%>
		<!--표현식 (<%= %>) : 값을 출력(변수, 메소드의 결과를 표시할 때 사용, out.print로 생각하면 됨)-->
		
		<h1>Welcome!<%=id %></h1>
		<p><a href="03_delete.jsp">Delete!</a><p>
		<p><a href="05_update.jsp">Update!</a><p>
		<p><a href="09_logout.jsp">Logout!</a><p>
	<%
		}
	%>

</body>
</html>