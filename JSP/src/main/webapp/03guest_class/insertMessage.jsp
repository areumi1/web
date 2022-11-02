<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 방명록 </title>

<script type="text/javascript"
   src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/ jquery-validation@1.19.3 /dist/additional-methods.min.js"></script>
<script type="text/javascript">
$(function () {

	
	
	$('#submitBtm').click(function() {
		//유효성 검사
		if($("input[name=guestName]").val() == ""){
			alert("아이디를 입력해 주세요");
			$("form[name=guestName]").focus();
			    return false;
		}
			
		if($("input[name=password]").val() == ""){
		    alert("비밀번호를 입력해 주세요");
		    $("input[name=password]").focus();
		    return false;
		}
		
		if($("textarea[name=message]").val() == ""){
		    alert("메세지를 입력해 주세요");
		    $("textarea[name=message]").focus();
		    return false;
		}
		
		
		$("form[name=frm]").submit();  // submit 함수를 사용해서 form태그안의 내용을 서버로 발송
		
		
	})// end of $('#submitBtm').click
	
}); // end of $(function () {}

</script>

</head>

<body>

	<form action="saveMessage.jsp" name="frm" method="get">
		이름 : <input type="text" name="guestName" required /><br/><br/>
		암호 : <input type="password" name="password" required /><br/><br/>
		메세지 : <textarea name="message" rows="3" cols="30" required></textarea><br/><br/>
		<input id='submitBtm' type="button" value="메세지 남기기">
	</form>
</body>
</html>