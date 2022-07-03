$(function(){
	
	//이메일 셀렉트바
	$("#selemail").on("change",function(){

		if($(this).val()=='_'){
			$("#email2").val(''); //지정된 메일 지우기
		}else{
			$("#email2").val($(this).val()); //선택한 값주기
			// naver.com google.com 등등..
		}
	});

	//이메일 중복확인
	$(".login-emailcheck-btn-check").on("click",function(){

		var frontemail=$('input[id=email1]').val();
		var backemail=$('input[id=email2]').val();
	    
		//이메일 입력창이 비었는가?
		if( frontemail != "" && backemail != "" )  {
			
	    var email='';
	    
	    $('input[name=email]').map(function(){
	    	email += $(this).val();
	    });

	    $.ajax({
	    	dataType: "json",
	        url:"/joinMember/emailCheck",
	        type:"get",
	        data:{"email":email},
	        success:function(data){
	          if(data.check==0){
	        	//사용 가능한 이메일 입니다. 출력
		        $(".login-emailcheck-message").css("display","inline-block");
	        	$(".login-emailcheck-failemailmessage").css("display","none");
	            $(".login-emailcheck-failmessage").css("display","none");
	        } else{
	        	//중복된 이메일 입니다. 출력 후 입력한 이메일 지우기
	            $(".login-emailcheck-failmessage").css("display","inline-block");
	        	$(".login-emailcheck-failemailmessage").css("display","none");
	        	$(".login-emailcheck-message").css("display","none");
	            $("#email1").val("");
	            $("#email2").val("");
				$("#email1").focus();
	       }
	     }
	   });
	} else{
		    //이메일 형식을 확인해 주세요. 출력
			$(".login-emailcheck-failemailmessage").css("display","inline-block");
			$(".login-emailcheck-message").css("display","none");
			$(".login-emailcheck-failmessage").css("display","none");
			return false;
		}
	});

	// 인증메일 전송 버튼
	$("#sendMail").click(function() {

		alert("인증요청 완료! 잠시만 기다려주세요.");
		var mail = $("#email").val(); //사용자의 이메일 입력값.

		$.ajax({
			type : 'post',
			dataType :'json',
			url : '/member/CheckMail',
			data : {"mail":mail},
			success:function(data){
				key = data;
				$(".email-code").fadeIn(500).delay(4000).fadeOut(500);
			}
		});
	});
});

function nextInfoFail()
{
	var mail = $('input[name=uesemail]').val();
	var code = $('input[name=code]').val();


	if( mail=="" || code=="" )
		$(".email-notyet").fadeIn(700).delay(2000).fadeOut(700);
		return false;
}

function nextInfo()
{
	var emailfront = $('input[id=email1]').val();
	var emailback = $('input[id=email2]').val();
	
	if( $(".form-code-input").val() == key ) {
		location.href="/joinMember/logininfo?emailfront="+emailfront+"&emailback="+emailback;
	} else{
		$(".email-notyet").fadeIn(700).delay(2000).fadeOut(700);
		return false;
	}
}