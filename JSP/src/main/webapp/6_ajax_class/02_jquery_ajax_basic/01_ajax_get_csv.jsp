<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script  type="text/javascript"  src="libs/jquery-1.9.1.min.js"> </script>

<script type="text/javascript">
$(function() {
	let param = { cate : ' book', name : 'hong'}; // 객체형식으로 변수를 잡음
	
	/* $.ajax({
		type : 'get', // 브라우저마다 ajax type 이 다른다. 모든 브라우저에 공통성을 부여하기 위해 타입을 지정
		data : param,
		url  : '01_server.jsp',
		success : parseData,		// 성공시 함수를 부르겠습니다.
		error : function (err) {
			alert('error');
			console.log(err);
		}
	}); */
	
	$.get('01_server.jsp',param, parseData); // 축약형 (url, data, success)
	
	function parseData(strText){
		
		// alert( strText );
		
		var aryData = strText.split("|");
					
		for(var i=0;i<aryData.length;i++){
			var param  = aryData[i].split("=");				
			if( param[0].trim() == 'cate'){  // 공백제거를 하지 않으면 처음에 공백에 들어와서 cate를 찾지 못함
				 document.getElementById("cate").value = param[1];
			}
			
			if( param[0].trim() == 'name'){
				document.getElementById("name").value = param[1];
			}
		
		}
		// 사용자가 모르게 백단으로 원하는 url에 다녀옴
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


