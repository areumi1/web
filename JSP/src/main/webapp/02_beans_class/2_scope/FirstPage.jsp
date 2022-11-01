<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%  //--------------------------- 값 지정
	pageContext.setAttribute("name", "KIM");
	request.setAttribute("name", "SEUNGMIN"); 	// 
	session.setAttribute("name", "DOKDO");		// 로그인, 여러페이지 장바구니 사용시 사용  // 브라우저 닫힐때까지 저장 또는 시간설정가능 
	application.setAttribute("name", "KOREA");  
	//application.log("FirstPage.jsp : " + pageContext.getAttribute("name") + "님 접속");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 첫번째 페이지 </title>
</head>
<body>

하나의 페이지 속성 : <%= pageContext.getAttribute("name") %> <br>
하나의 요청 속성 :	 <%= request.getAttribute("name") %> <br>
하나의 세션 속성 :	 <%= session.getAttribute("name") %> <br>
하나의 어플리케이션 속성 : <%= application.getAttribute("name") %> <br>

<!--  
	request.getParameter("");
		- 클라이언트 측에서 넘어오는 데이터를 받을때 사용 
	
	request.getAttribute("");
		- request.setAttribute("");에 저장한 경우 사용
		- 서버에서 저장하고 서버에서 받아서 사용 할경우 

 -->

<!-- #############  -->
<!-- <a href="SecondPage.jsp">다음</a> -->
<!-- 페이지 forward 이동된다면  -->
<%-- <% response.sendRedirect("SecondPage.jsp"); %>	 --%>
<!--  첫번째 페이지의 값을 가져 오지 못한다. -->

<jsp:forward page="SecondPage.jsp"></jsp:forward>
<!--  서버단에서 second 로 바꿔주어 ???  -->

</body>
</html>