<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 1) 이전 화면에서 사용자 입력값들을 얻어오기
	//		request.getParameter("");		한개의 값 가져오기
	//		request.getParameterValues("")	여러개의 값 가져오기 배열로 리턴받아 처리
	
	String name 	= request.getParameter("name");
	String gender 	= request.getParameter("gender");
	String job		= request.getParameter("occupation");
	
	String hobby[]	= request.getParameterValues("hobby");
	
	
	 String hobbyTxt = "";
/* 	if (hobby !=null){		// null 이 아닐경우 for문 돌리기 null 값일때 for문 돌리시 500 null에러 뜸
		for(int i=0; i>hobby2.length; i++){
			hobbyTxt += hobby2[i] + "/" ;
		}
	} */

	
		for(int i=0; hobby != null && i>hobby.length; i++){
			hobbyTxt += hobby[i] + "/" ;
		}

	

%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!--  2) 얻어온 입력값들을 화면에 출력 -->
	이름 : <%= name %> <br/>
	성별 : <%= gender %>	 <br/>
	직업 : <%= job %>	 <br/>
	취미 : <%= hobbyTxt %>
	
	<%-- 향상된 for문 : for(String s: hobby2) out.print(s + " "); --%>
	
</body>
</html>