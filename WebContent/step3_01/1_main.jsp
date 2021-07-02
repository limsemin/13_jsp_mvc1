<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1_main</title>
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
<style>
body{
		background-color:#FFF0F5;
		}
</style>
</head>
<body>

<center>
<img src="../img/pngwing.com.png" alt="환영합니다" width="500px" height="300px"><br><br>
<input type="button" value="게시판 보기" onclick="location.href='4_bList.jsp'">
</center>

</body>
</html>