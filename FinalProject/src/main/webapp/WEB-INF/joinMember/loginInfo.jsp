<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>

<script type="text/javascript">

$(function(){
	
	//전체 체크박스 선택/해제
	$("#allCheck").click(function() {
		if($("#allCheck").is(":checked")) $("input[name=RequiredCheck]").prop("checked", true);
		else $("input[name=RequiredCheck]").prop("checked", false);
	});
	
	$("input[name=RequiredCheck]").click(function() {
		var total = $("input[name=RequiredCheck]").length;
		var checked = $("input[name=RequiredCheck]:checked").length;
		
		if(total != checked) $("#allCheck").prop("checked", false);
		else $("#allCheck").prop("checked", true); 
	});
});


//비밀번호 8~16자리의 문자와 숫자를 조합했는지 확인
function passCheck(){
	
	var passwd = $("#pass").val();	
	var check1 = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,16}$/.test(passwd);   
	
	if(!check1){		
		$("span.rewritepass").css("display","inline-block");
		return false;	
	} else{
		$("span.rewritepass").css("display","none");
		return true;
	}
}

//작성한 비밀번호 일치확인
function passDoublecheck(){
	
	 var p1 = $("#pass").val();
     var p2 = $("#pass2").val();
     if( p1 != p2 ) {
       $("span.donotmatchpass").css("display","inline-block");
       return false;
     } else{
       $("span.donotmatchpass").css("display","none");
       return true;
     }
}

//다음으로 - 빈칸 없고, 필수 체크박스 2개 클릭, 비밀번호 일치시, DB에 정보 insert후 loginEnd로 이동
function signUpEnd(){
	
	var total = $("input[name=RequiredCheck]").length;
	var checked = $("input[name=RequiredCheck]:checked").length;
	var p1 = $("#pass").val();
    var p2 = $("#pass2").val();
    var passwd = $("#pass").val();	
	var check1 = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,16}$/.test(passwd);   
	
	if( p1 != p2 ){
		alert("비밀번호가 일치하지 않아요");
		return false;
	} else if(!check1){
		alert("8~16자리의 문자와 숫자를 조합해서 만들어 주세요");
		return false;	
	} else if(total!=checked){
		alert("필수항목체크가 안됐어요");
		return false;
	}
	
}



</script>

</head>
<body>

	<!-- main 시작 -->
	<div class="login-info">
		
		<table class="login-info-header">
			<tr>
			<td class="login-info-email"><img class="login-info" src="${root }/image/asset/이메일인증black.png" width = "25px">&nbsp; 1.이메일 인증</td>
			
			<td><hr class="login-info-line"></td>
			
			<td class="login-info-info"><img class="login-info" src="${root }/image/asset/정보입력green.png" width = "25px">&nbsp; 2.정보입력 및 약관동의</td>
			
			<td><hr class="login-info-line"></td>
			
			<td class="login-info-end"><img class="login-info" src="${root }/image/asset/가입완료black.png" width = "25px">&nbsp; 3.가입완료</td>			
			
			</tr>
		</table>
		
		<br>
		<div class = "login-info-edong">	
		<span class="login-info-title">회원 정보 입력</span>
		</div>
		<form action="insertMember" method="post">
			<table class="login-info-table">
								
					<tr>
					<td class = "login-info-table-title">이름</td>
					<td class= "login-info-content"><input type="text" name="name" class="form-logineinfo-input" 
					placeholder="실명을 입력해 주세요."  required="required">
					</td>
					</tr>
	
					<tr>
					<td class="login-info-empty"></td>
					</tr>
					
					<tr>
					<td class = "login-info-table-title">이메일</td>
					<td>
						<input type="text" name="email1" class="login-info-input-email1" placeholder="2RunTrip" required="required">
						<b>&nbsp;@&nbsp;</b>
						<input type="text" name="email2" id="email2" class="login-info-input-email2" placeholder="2RunTrip.com" required="required">
					</td>
					</tr>
					
					<tr>
					<td class="login-info-empty"></td>
					</tr>
					
					<tr>
					<td class = "login-info-table-title">아이디</td>
					<td class= "login-info-content"><input type="text" name="userid" class="form-logineinfo-input" 
					placeholder="ID" required="required">
					</td>
					</tr>
					
					<tr>
					<td class="login-info-empty"></td>
					</tr>
					
					<tr>
					<td class = "login-info-table-title">비밀번호</td>
					<td class= "login-info-content">
					  <input type="password" name="password" id="pass" class="form-logineinfo-input" 
					  placeholder="비밀번호" required="required">
					</td>
					</tr>
					
					<tr>
					<td class="login-info-empty-small"></td>
					</tr>
															
					<tr>
					<td></td>
					<td class= "login-info-content">
					  <input type="password" name="code" id="pass2" class="form-logineinfo-input" 
					  placeholder="비밀번호를 다시 입력해 주세요" required="required">
					</td>
					</tr>
					
					<tr>
					<td class="login-info-empty-small2"></td>
					</tr>
					
					<tr>
					<td></td>
					<td><a>※ 8~16자리의 문자와 숫자를 조합해서 만들어 주세요.</a></td>
					</tr>
					
					<tr>
					<td class="login-info-empty"></td>
					</tr>
					
					<tr>
					<td class = "login-info-table-title">휴대폰번호</td>
					<td class= "login-info-content"><input type="text" name="phone" class="form-logineinfo-input" 
					placeholder="01012345678" required="required" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
					</td>
					</tr>
											
				</table>
				
				
				<div class = "login-info-btn-group1">
				   <input type="checkbox" id="allCheck"/> 
                   <label for="allCheck" class="login-info-btn-check-all"><span></span>전체동의</label><br>
				  
				   <input type="checkbox" id="check1" name="RequiredCheck" />
				   <label for="check1" class="login-info-btn-check"><span></span>개인정보 수집 및 이용에 대한 동의</label><span class="login-info-a-color">(필수)</span><br>
				  
				   <input type="checkbox" id="check2" name="RequiredCheck" />
				   <label for="check2" class="login-info-btn-check"><span></span>개인정보 제 3자 제공에 대한 동의</label><span class="login-info-a-color">(필수)</span><br>
				</div>
			
				<div class = "login-info-btn-group2">
				<button type="button" class= "login-info-btn-back" onclick="location.href='/joinMember/loginEmail'"><img class="login-info-back" src="${root }/image/asset/이전으로아이콘.png" width = "25px">이전으로</button>
				<button type="submit" class= "login-info-btn-next" onclick="passCheck(); passDoublecheck(); signUpEnd();">다음으로<img class="login-info-next" src="${root }/image/asset/다음으로아이콘.png" width = "25px"></button>
				</div>
			</form>

				<span class="rewritepass">8~16자리의 문자와 숫자를 조합해서 만들어 주세요.</span>
				<span class="donotmatchpass">비밀번호가 일치하지 않습니다.</span>
		</div>
<!-- main 끝 -->

</body>
</html>