<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%--

	CREATE DATABASE STEP3_BOARD_EX;
	
	USE STEP3_BOARD_EX;
	
	CREATE TABLE BOARD(
		NUM INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	    WRITER VARCHAR(50),
	    EMAIL VARCHAR(50),
	    SUBJECT VARCHAR(50),
	    PASSWORD VARCHAR(20),
	    REG_DATE DATE,
        READ_COUNT INT,
	   	CONTENT VARCHAR(200)
	);
	
	SELECT * FROM BOARD;

--%>
<body>

<img src="../img/bird-1232416_1920.png" alt="어서오세요" width="700px">
<input type="button" value="게시판 이동" onclick="location.href='004_blist.jsp'">

</body>
</html>