window.onload = function(){
	
	// 인원수 입력및 합계
	let adult = document.getElementById('tfadult');
	let teenager = document.getElementById('teenager');
	let child = document.getElementById('child');	
	
	adult.oninput = su;
	teenager.oninput = su;
	child.oninput = su;
	
	function su() {
		document.getElementById('money').value =
		adult.value*39000 + teenager.value*29000 + child.value*19000;
	};
	
	// 결제하기 이벤트

	
			let payment = document.getElementById('payment');
			payment.onsubmit = function(evt){
			evt.stopPropagation();
			evt.preventDefault();
			
			alert(checkbox.checked);
			alert(checkbox2.checked);
			if(! checkbox.checked || checkbox2.checked ){
				alert('동의해주셔야 가능 합니다.')
				return;
			}
			
			
			payment.submit();
		}

	}
			

	

	

