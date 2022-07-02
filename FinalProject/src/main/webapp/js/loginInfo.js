$(function(){
	
	//전체 체크박스 선택/해제
	$("#allCheck").click(function() {
		if($("#allCheck").is(":checked")){
			$("input[name=RequiredCheck]").prop("checked", true);
			$(".allnocheckbtn").css("display","none");
		}
		else
			$("input[name=RequiredCheck]").prop("checked", false);
	});
	//따로 체크박스 전부 선택시 전체 체크박스도 선택
	$("input[name=RequiredCheck]").click(function() {
		var total = $("input[name=RequiredCheck]").length;
		var checked = $("input[name=RequiredCheck]:checked").length;

		if(total != checked)
			$("#allCheck").prop("checked", false);
		else
			$("#allCheck").prop("checked", true);
	});

	var userinfoname=false;
	var userinfoid=false;
	var userinfoid2=false;
	var userinfopwd1=false;
	var userinfopwd2=false;
	var userinfohp=false;
	var userinfobtn=false;

	//이름 2글자 이상 16글자 이하, 한글만
	$(".username").blur(function(){

		var uname = $(".username").val();

		var checkname = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;

		if(!checkname.test(uname) || uname.length<2 || uname.length>16 ){
			//2~16자리의 한글로 작성해 주세요. 출력
			$(".hangulName").css("display","inline-block");
			userinfoname=false;
		} else{
			$(".hangulName").css("display","none");
			userinfoname=true;
		}
	});

	//6글자 이상 영문 or 영문+숫자 조합, 아이디 DB중복여부 확인
	$(".userid").blur(function(){

		//입력한 아이디
		var i=$(".userid").val();

		var pattern1 = /[a-zA-Z]/;
	    var pattern2 = /[0-9]/;

	    if( !pattern1.test(i) || i.length<6 || !pattern1.test(i) 
	    		&& !pattern2.test(i) && i.length<6 ) {
	    	//6자리 이상 영문 또는 영문과 숫자 조합으로 작성해 주세요. 출력
	    	$(".checkuserid").css("display","inline-block"); 
	    	userinfoid=false;
	    }else {
	    	$(".checkuserid").css("display","none");
	    	userinfoid=true;
	    }

	    $.ajax({
	        type:"get",
	        dataType:"json",
	        data:{"userid":i},
	        url:"/joinMember/idcheck",
	        success:function(data){
	           if(data.check!=0){
	        	 //중복된 아이디입니다. 출력
	        	   $(".duplicateid").css("display","inline-block"); 
	        	   userinfoid2=false;
	           }else{
	        	   $(".duplicateid").css("display","none");
	        	   userinfoid2=true;
	           }
	        }
	     });
	});

	//비밀번호 8~16자리의 문자와 숫자를 조합했는지 확인
	$(".userpasswd").blur(function(){

		//사용자가 입력한 비밀번호
		var passwd = $("#pass").val();
		
		var check1 = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,16}$/.test(passwd);

		if(!check1){
			//8~16자리의 문자와 숫자 조합으로 작성해 주세요. 출력
			$(".rewritepass").css("display","inline-block");
			userinfopwd1=false;
		} else{
			$(".rewritepass").css("display","none");
			userinfopwd1=true;
		}
	});

	//재입력한 비밀번호 일치확인
	$(".userpasswd2").blur(function(){

		var p1 = $("#pass").val();
	    var p2 = $("#pass2").val();
	    
	    if( p1 != p2 ) {
	    	//비밀번호가 일치하지 않습니다. 출력
	        $(".donotmatchpass").css("display","inline-block");
	        userinfopwd2=false;
	    } else{
	        $(".donotmatchpass").css("display","none");
	        userinfopwd2=true;
	    }
	});

	//핸드폰번호 숫자만 입력
	$(".userhp").blur(function(){
		
		var hp = $(".userhp").val();
		// 0101234567 or 01012345678
		var hp_pattern =  /^\d{3}\d{3,4}\d{4}$/;
		
		if(!hp_pattern.test(hp)) {
			//휴대폰 번호 10자리 또는 11자리를 입력해 주세요. 출력
			$(".userphonenumber").css("display","inline-block");
			userinfohp=false;
	    } else {
	    	$(".userphonenumber").css("display","none");
	    	userinfohp=true;
	    }
	});

	//다음으로
	$(".login-info-btn-next").click(function(){

		var total = $("input[name=RequiredCheck]").length;
		var checked = $("input[name=RequiredCheck]:checked").length;

		if(total!=checked){
			//이용 약관에 동의해 주세요. 출력
			$(".allnocheckbtn").css("display","inline-block");
			userinfobtn=false;
		} else{
			$(".allnocheckbtn").css("display","none");
			userinfobtn=true;
		}
		
		//정보 입력한 것 중에 하나라도 조건에 맞지 않을 시
		if(userinfoname == false || userinfoid == false || userinfoid2 == false ||userinfopwd1 == false || 
		   userinfopwd2 == false || userinfohp == false || userinfobtn == false) {

			//가입 조건을 다시 한번 확인해 주세요. 출력
			$(".allnochecklist").fadeIn(500).delay(4000).fadeOut(500);
			return false;
		}
	});
	
});