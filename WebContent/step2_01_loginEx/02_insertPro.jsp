<%@page import="step2_00_loginEx.MemberDTO"%>
<%@page import="step2_00_loginEx.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JoinPro</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");

		String id 	=	request.getParameter("id"); 	//id를 서버에 요청
		String pwd 	=	request.getParameter("pwd");	//pwd를 서버에 요청
		String name =	request.getParameter("name");	//name을 서버에 요청
	
		boolean isFirstMember = MemberDAO.getInstance().insertMember(new MemberDTO(id,pwd,name));
		if(isFirstMember){
		//MemberDAO에서 하나의 객체만을 

	%>
		<script>
			alert("you are signed up");
			location.href = "00_main.jsp";
		</script>
	<% 
		}
		else{
	%>
		<script>
			alert("try other Id");
			history.go(-1);
		</script>		
	<% 
		}
	%>	

</body>
</html>