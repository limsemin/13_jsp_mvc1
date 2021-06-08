<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deletePro</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("password");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; // select문의 결과를 저장할 객체
		
		try {
			
			String jdbcUrl = "jdbc:mysql://localhost:3306/login_ex?serverTimezone=UTC";
			String dbId    = "root";
			String dbPasswd  = "1234";
			
			Class.forName("com.mysql.cj.jdbc.Driver");	
			conn = DriverManager.getConnection(jdbcUrl , dbId , dbPasswd);
			
			
			pstmt = conn.prepareStatement("select * from member where id=? and passwd=?");
			pstmt.setString(1,id);
			pstmt.setString(2,passwd);
			
			rs = pstmt.executeQuery();	//db를 가져왔기때문에 rs를 사용한다.
			
			if(rs.next()){// rs.next() : 조회된 1줄의 쿼리문이 있으면 true가 반환된다.
			
			pstmt = conn.prepareStatement("delete from member where id=?");
			pstmt.setString(1,id);
			pstmt.executeUpdate();		//rs를 사용하지 않는다.
		%>	
			<script>
				alert("회원 탈퇴 되었습니다.");
				location.href="00_main.jsp";
			</script>
		<%	
			}
			else{
		%>
			<script>
				alert("아이디와 비밀번호를 확인해주세요.");
				history.go(-1); //한페이지 이동으로 이동하는 메서드
								//history.back()과 동일하다.
			</script>
		<%
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			rs.close();
			pstmt.close();
			conn.close();
		}
		
		
	%>
</body>
</html>


