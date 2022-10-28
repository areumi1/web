<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  변수선언시 사용 (거의 사용하지 않음) -->
<%! String msg; %>

<!--  자바 코딩을 기술 -->
<%
	msg = "안녕하세요~";
%>

<!-- HTML 주석 : 클라이언트에겐 간다 브라우저에서는 실행되지 않음 비효율적 화면구분을 위해 사용 비 -->
<%-- JSP 주석 --%>
<% // JAVA주석 : class로 변환됬을때 값을 주지 않겠다. %>

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