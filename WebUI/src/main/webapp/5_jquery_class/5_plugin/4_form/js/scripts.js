
$(function(){
	
	$('#signup > form').validate({
		rules : {						// 규칙
			name : { required: true},	// 필수입력사항 띄우기
			email : { required: true, 	// 필수입력사항 띄우기
					  email : true	// 이메일 양식에 맞지 않으면 fales 	
			},
			website : { url:true },		// url(http~) 경로가 아니면 false
			password : {
				minlength : 6,		// 최소 글자 설정
				maxlength : 12		// 최대 글자 설정
			},
			passconf : { equalTo : '#password'}		// 해당하는 '#password' 값과 같은지 확인
		},
		success : function(label){		// 성공했을때 이 함수를 불러라.
			label.addClass('valid');
			label.text('성공');
		}
	});
	
	
	//------------------------------------------------
	// attr() -> prop()
		$('.check-all').click(function(){
			//if($(".check-all").is(":checked")) {		// 만약 check-all 체크시
            //$(".agree").prop("checked", true);		// true(체킹시) class = agree 값 모두 체크
            //}
			//else $(".agree").prop("checked", false);	// false(체킹해제시) 	class = agree 값 모두 체킹해제
			
			$('.agree').prop('checked', $('.check-all').is(':checked'));
			// prop 속성값을 가져온다.
			// $('.check-all').is(':checked') 값이
		});

		
		
	

}); // 