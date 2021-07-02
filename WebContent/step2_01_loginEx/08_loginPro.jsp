<%@page import="step2_00_loginEx.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginPro</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		
		String id 	  	= request.getParameter("id");
		String passwd 	= request.getParameter("passwd");
		
		boolean isValidMember =	MemberDAO.getInstance().login(id,passwd);
		//dao에서 isvalidmember로 이동 확인 후
		
		if(isValidMember){
			session.setAttribute("id", "passwd");  //if를 타고 돌아옴
			session.setMaxInactiveInterval(60*10); //시간표기 할 때 * 해주어야 한다.ex)10분간 서비스 

			//00_main.jsp페이지로 이동
			//javascript의 location.href와 같은 기능을 한다.
			response.sendRedirect("00_main.jsp");
		} 	//response서버측에서 클라이언트측으로 데이터를 전달하기 위한 객체

		else{
	%>
		<script>
		alert("check your Id or password");
		history.go(-1);
		</script>
	<% 
		}
	%>

	

</body>
</html>