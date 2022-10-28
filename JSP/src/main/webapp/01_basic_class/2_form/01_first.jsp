<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title> 로그인창 </title>
</head>
<body>

<h3>로그인 확인하기 </h3> 
<form action="01_second.jsp" method="get">
사용자: <input name='User' type='text'><br/>
비밀번호: <input name='Pass' type='password'><br/>
<input type='submit' value='login'> 
</form>
<%-- form : 서버에 전송해 값을 비교하기위해 필수 사용 submit으로 서버로 파일을 넘김 
 method="get" 일시 사용자 입력값이 url에 나오기 때문에 "post" 사용 method="" 사용하지 않을 경우 디폴트 값은 "get"
  
--%>

</body>
</html>