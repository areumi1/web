<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="member.dao.*" %>
    
<%
// 0. 한글처리
request.setCharacterEncoding("utf-8");  // 한글 입력시 깨질는 것을 막아준다.

// 1. 이전 폼의 입력값 얻어오기
	String name = request.getParameter("realname");
	String nick	= request.getParameter("nickname");
	String email = request.getParameter("myemail");
	int age	= Integer.parseInt(request.getParameter("myage")); //getParameter 로 가져오면 전부 String 값
	

// 2. VO객체에 저장하기
	MemberVO vo = new MemberVO(); 
	vo.setName(name);
	vo.setNickName(nick);
	vo.setEmail(email);
	vo.setAge(age);
	
	

// 3. DB 입력하기
	MemberDAO dao = MemberDAO.getInstance(); 
	dao.insert(vo); 
 
// 4. 출력은 알아서

%>  
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>정보</h2>
이름 : <%= name %>
별명 : <%= nick %>
이메일 : <%= email %>
나이 : <%= age %>


</body>
</html>