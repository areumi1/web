<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title></title>
	<script  type="text/javascript"  src="libs/jquery-1.9.1.min.js"> </script>
	<script>
$(function () {
	
	let param = { cate : ' book', name : 'hong'};
	
	$.ajax({
		data : param,
		url  : '04_server.jsp',
		dataType : 'text',  // 지금 text 추후에는 json
		success : parseDate			// 안에서 function , 밖에서 function 사용시 각각의 this 가 달라짐 
	});
	
	function parseDate(result) {
		//*************
		// 추후에 json 라이브러리를 이용하여 json 객체 변환
		
		let obj = {};
		obj = eval("(" + result + ")"); 
		$('#cate').val( obj.first );
		$('#name').val( obj.second );
		
		// 편법 eval() : 문자로 표현 된 JavaScript 코드를 실행하는 함수
	}
	
	
})	    
	</script>
</head>

<body>
서버로부터 넘겨받은 데이터<br/>
첫번째 데이터 : <input type="text" name="" id="cate"/><br/>
두번째 데이터 : <input type="text" name="" id="name"/><br/>
</body>
</html>


