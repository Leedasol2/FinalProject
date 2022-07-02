$(function(){
	
	var passchecklist1=true;
	var passchecklist2=true;
	var hpchecklist=true;


//비밀번호 8~16자리의 문자와 숫자를 조합했는지 확인
$(".userpasswd").blur(function(){

	var passwd = $("#pass").val();
	var check1 = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,16}$/.test(passwd);

	if(!check1){
		
		passchecklist1=false;
		alert("비밀번호는 8자리 이상 16자리 이하로 문자와 숫자를 조합하여 주십시오.");
	} else{		
		passchecklist1=true;
	}
});


//재입력한 비밀번호 일치확인
$(".userpasswd2").blur(function(){

	var p1 = $("#pass").val();
    var p2 = $("#pass2").val();
    
    if( p1 != p2 ) {
    	passchecklist2=false;
    	alert("비밀번호가 일치하지 않습니다.");
    } else{
    	passchecklist2=true;
    }
});

//핸드폰번호 숫자만 입력
$(".userhp").blur(function(){
	
	var hp = $(".userhp").val();
	var hp_pattern =  /^\d{3}\d{3,4}\d{4}$/;
	
	if(!hp_pattern.test(hp)) {
		hpchecklist=false;
		alert("전화번호는 숫자만을 입력해야 합니다.");
    } else {
    	hpchecklist=true;
    }
});



$(".btn-update-information").click(function(){

	if(passchecklist1 == false) {

		return false;
	}
	if(passchecklist2 == false){

		return false;
	}
	if(hpchecklist == false){
		
		return false;
	}
});

});