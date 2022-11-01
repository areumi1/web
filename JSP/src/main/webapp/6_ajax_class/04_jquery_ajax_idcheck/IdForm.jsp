<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>아이디 중복 검사</title>
<script type="text/javascript"
   src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
   $(function() {
   //   $('#id_check').click(function() {
      $('.userinput').keyup(function () {   // 사용자가 한자한자 입력할때마다 서버에 있는 데이터와 확인 (사용X)
         $.ajax({
            url : 'IdCheck.jsp',
            data : {
               id : $('.userinput').val()   // 사용자가 입력한 아이디의 값
            },
            success : function(data) {
               // data : 서버에서 return 된 값
               if (data.trim() == 'YES') {
                  $('#idmessage').text('이미 존재하는 아이디입니다.');
                  $('#idmessage').show();
               } else if (data.trim() == 'NO') {
                  // result 가 리턴 될 때 문자열 앞뒤로 공백이 생김. 
                  // trim() 함수 사용해서 공백 제거 필수.
                  $('#idmessage').text('사용 가능한 아이디입니다.');
                  $('#idmessage').show();
               }

            }

         });

      })

   })
</script>

</head>
<body>

   <input name="id" type="text" class="userinput" size="15" />
   <button type="button" id="id_check">중복체크</button>
   <br />
   <br />
   <div id="idmessage" style="display: none;"></div>

</body>
</html>