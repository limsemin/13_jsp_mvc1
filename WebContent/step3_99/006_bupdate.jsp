<%@page import="step3_00_boardEx.BoardDAO"%>
<%@page import="step3_00_boardEx.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>006_bupdate</title>
</head>
<body>
	<%
		int num=Integer.parseInt(request.getParameter("num"));
		BoardDTO bdto=BoardDAO.getInstance().getOneUpdateBoard(num);
	%>
	<form action="007_bupdatepro.jsp">
		<h1>게시글 수정하기</h1>
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
				<td><input type="text" name="subject" value="<%=bdto.getSubject() %>"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td>글내용</td>
				<td><textarea rows="10" cols="60" name="content"><%=bdto.getContent() %>"></textarea></td>
			</tr>
		</table>
		<p>
			<input type="hidden" name="num" value="<%=bdto.getNum()%>" />
			<input type="submit" name="글수정"/>
			<input type="button" onclick="location.href='04_blist.jsp'" value="전체 글보기" />
		</p>
	</form>
</body>
</html>