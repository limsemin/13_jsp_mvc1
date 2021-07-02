<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2_bWrite</title>
<body>
	<form action="3_bWritePro.jsp" method="post">
		
		<h2><td><center>게시글 쓰기</center></td></h2>
		<td><center><table style="width: 700px;" aligin="center" border="2"></center></td>
			<colgroup>
				<col width="20%">
				<col width="80%">
			</colgroup>
			<tr>
				<td align="center">작성자</td>
				<td><input type="text" id="writer" name="writer"></td>
			</tr>
			<tr>
				<td align="center">제목</td>
				<td><input type="text" id="subject" name="subject" /></td>
			</tr> 	
			<tr>
				<td align="center">이메일</td>
				<td><input type="text" id="email" name="email"></td>
			</tr>
			<tr>
				<td align="center">비밀번호</td>
				<td><input type="password" id="password" name="password"></td>
			</tr>
			<tr>
				<td align="center">글내용</td>
				<td><textarea rows="10" cols="80" id="content" name="content"></textarea></td>
			</tr>
			<tr>
				<td align="center">인증번호</td>
				<td><input type="text">&nbsp;&nbsp;&nbsp;※ 아래 인증번호를 입력하세요.</td>
	<%!
				public static String getrndnum(int loopcount){
  				String str = "";
  				int d = 0;
 				for (int i = 1; i <= loopcount; i++){
  				Random r = new Random();
    			d = r.nextInt(9);
    			str = str + Integer.toString(d);
  			}
  				return str;
		}
	%>
			</table>			
	<script>
		alert("인증번호가 다릅니다");	
	</script>
	<%
		
				String num = getrndnum(5); out.print("인증번호="+num+"<br />");
	%>
			</tr>
			
			<br>
				<input type="submit" value="글쓰기" />
				<input type="button" onclick="location.href='4_bList.jsp'" value="전체 글 보기">
			</br>
	</form>
</body>
</html>