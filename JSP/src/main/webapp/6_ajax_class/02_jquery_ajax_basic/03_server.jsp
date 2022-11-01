<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- contentType="text/xml"이다. -->  
   
<%	// 1. 이전 화면에서 넘겨받은 데이타
	String cate = request.getParameter("cate");
	String name = request.getParameter("name");
	
	// 2. 다시 화면으로 보낼 데이터 구성
	String result ="";
	
	result += "<data>";
	result += "<first>"+ "서버에서"+cate+"변경" +"</first>";	// 문자열로 보낼경우 특수문자등 값이 제대로 안넘어 올수 있어 권장사항으로 테그를 만들어 확인
	result += "<second>"+ "from_"+name+"_server" +"</second>";
	result += "</data>";
	
	out.write(result);
	
%>    
