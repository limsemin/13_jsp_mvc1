<%@page import="step3_00_boardEx.BoardDAO"%>
<%@page import="step3_00_boardEx.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4_bList</title>
<style>
body{
		background-color:#FFF0F5;
		}
h1{
	color: blue;
}
</style>

</head>
<body>
	<td><center><h1>게시글 보기</h1></center></td>
	<td><center><table border="2"></center></td>
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>조회수</td>
			<td>작성일</td>
			<td>이메일</td>
	</tr>
	<%
		ArrayList<BoardDTO> boardList = BoardDAO.getInstance().getAllBoard();
		for(int i=0; i<boardList.size(); i++){
	%>
		<tr>
			<td><%=boardList.get(i).getNum()%></td>
			<td><a href="5_bInfo.jsp?num=<%=boardList.get(i).getNum() %>">
					<%=boardList.get(i).getSubject()%>
			</a>
			</td>
			<td><%=boardList.get(i).getWriter() %>
			<td><%=boardList.get(i).getReadCount() %>
			<td><%=boardList.get(i).getRegDate() %>
			<td><%=boardList.get(i).getEmail() %>
		</tr>
	<%
	}
	%>
		<tr>
			<td colspan="6">
				<input type="button" value="글쓰기" onclick="location.href='2_bWrite.jsp'">	
			</td>
		</tr>	
	</table>
</body>
</html>