$(function() {

	//(1) 오늘 날짜 출력 (10점)
	let today = new Date();
	$('.year').text(today.getFullYear());
	$('.month').text(today.getMonth() + 1);
	$('.date').text(today.getDate());

	//(2) 포커스 가면 ‘검색어를 입력하세요’를 안보이고 다시 포커스가 없으면 다시 출력 (10점)

	$('#keyword').focus(function() {
		$(this).css('background', 'url("")');	// 선택한 값 만 포커스가 잡힌다.
	});

	$('#keyword').blur(function() {
		$(this).css('background', 'url("../images/sch_guide.gif")');	// 선택한 값 만 포커스가 잡힌다.
	});

	//(3) 탭팬 구현 (10점)
	$('.tab_btn1 > a img').click(function() {
		$(this).attr('src', $(this).attr('src').replace('out', 'over')); // 이미지 속성을 out에서 over로 변경함
		$('.tab_btn2 > a img').attr('src', 'images/tab_btn_2_out.gif');   // 남은 버튼은 out으로 출력
		$('.tab_btn3 > a img').attr('src', 'images/tab_btn_3_out.gif');

		//   $(this).next('ul').toggleClass(".tab_btn2",".tab_btn3");


	})

	$('.tab_btn2 > a img').click(function() {
		$(this).attr('src', $(this).attr('src').replace('out', 'over'));
		$('.tab_btn1 > a img').attr('src', 'images/tab_btn_1_out.gif');
		$('.tab_btn3 > a img').attr('src', 'images/tab_btn_3_out.gif');

		//    $(this).next('ul').toggleClass(".tab_btn1",".tab_btn3");

	})

	$('.tab_btn3 > a img').click(function() {
		$(this).attr('src', $(this).attr('src').replace('out', 'over'));
		$('.tab_btn1 > a img').attr('src', 'images/tab_btn_1_out.gif');
		$('.tab_btn2 > a img').attr('src', 'images/tab_btn_2_out.gif');

		//    $(this).next('ul').toggleClass(".tab_btn1",".tab_btn2");
	})

	$('#tabmenu').each(function() {

		let allDt = $(this).find('dt');
		let allDd = $(this).find('dd');

		allDd.hide();
		allDd.first().show();
		allDt.css({ 'cursor': 'pointer' });

		allDt.click(function() {
			allDd.hide();
			$(this).next().show(); // 무엇의 바로 다음요소 찾을때 사용

		})

	})


	//(4) 이미지슬라이드 구현 (10점)
	$('#best_bg > ul').bxSlider({
     auto: true,
     autoControls: true,
     stopAutoOnClick: true,
     pager: true,
     slideWidth: 600,
      minSlides: 5,
       maxSlides: 5,
       slideMargin: 10
   });
   
   
	//(5) [로그인]을 누르면 로그인 창이 보이고 [Close]를 누르면 다시 안 보임  (20점)
	 $(".login_wrap a img").click(function(){
      $("form#login_f").css("top","0px");
   		})
   
      $(".login_close_btn a img").click(function(){
      $("form#login_f").css("top","-500px");
   })
	//(6) [전체메뉴]를 선택하면 전체메뉴가 보이고 [Close] 누르면 다시 안 보임 (20점)
	$("#total_btn").click(function(){
		$("#total_menu").slideDown();  
	})
	
	$("#total_close").click(function(){
		$("#total_menu").slideUp();  
	})
	
	//(7) 그 외 추가적으로 구현하면 해당 화면 캡쳐하고 코드를 작성합니다. (20점)
	

})


