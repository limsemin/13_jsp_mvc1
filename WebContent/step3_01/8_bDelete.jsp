<%@page import="step3_00_boardEx.BoardDAO"%>
<%@page import="step3_00_boardEx.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>8_bDelete</title>
</head>
<body>

	<%
		int num = Integer.parseInt(request.getParameter("num"));
		BoardDTO bdto = BoardDAO.getInstance().getOneUpdateBoard(num);
	%>
	<form action="9_bDeletePro.jsp" method="post">
		<h1>게시글 삭제하기</h1>
		<table border="1">
			<tr>
				<td>작성자</td>
				<td><%=bdto.getWriter() %></td>
			</tr>
			<tr>
				<td>작성일</td>
				<td><%=bdto.getRegDate() %></td>
			</tr> 
			<tr>
				<td>제목</td>
				<td><%=bdto.getSubject() %></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr align="right">
				<td colspan="4">
					<input type="hidden" name="num" value="<%=bdto.getNum() %>">
					<input type="submit" value="글삭제">
					<input type="button" onclick="location.href='4_bList.jsp'" value="목록보기">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>