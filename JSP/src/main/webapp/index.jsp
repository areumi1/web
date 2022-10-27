<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  변수선언시 사용 (거의 사용하지 않음) -->
<%! String msg; %>

<!--  자바 코딩을 기술 -->
<%
	msg = "안녕하세요~";
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  자바 결과값을 화면에 출력 -->
메세지 : <%= msg %>
</body>
</html>