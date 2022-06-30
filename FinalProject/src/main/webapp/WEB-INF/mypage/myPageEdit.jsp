<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>

<script type="text/javascript">

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

</script>

</head>
<body>

		<!-- main 시작 -->
<div class="container">
	<div class="inner calendar">
		<div class="mypage mypage-edit">
			<div class="mypage-header">
				<div class="mypage-title">마이페이지</div>
				<div class="mypage-menu">
					<ul class="mypage-ul">
						<li class="mypage-li"><a href="${root}/mypage/myPageEdit">회원정보수정</a></li> <!-- 추후에 맵핑주소 보고 바꾸기 -->
						<li class="mypage-li"><a href="${root}/mypage/myPageScrap">스크랩</a></li> 
						<li class="mypage-li"><a href="${root}/html/myPageCalendar">마이캘린더</a></li>
						<li class="mypage-li"><a href="${root}/mypage/myPageReview">리뷰</a></li>
					</ul>
				</div>
				<div class="hr"><hr></div>
			</div>

			<div class="editmember">
			<form action="/mypage/updateedit" method="post" class="form-memberform">
				<input type="hidden" name="allchecklist" value = "allchecklist" >
	  			<input type="hidden" name="mnum" value="${dto.mnum }">
				
					<table class="edit-content">
						<tr>
							<th align="left">이름</th>
							<td><input type="text" name="name"
								class="form-control-inputread" placeholder="홍길동"
								readonly="readonly" value="${dto.name}"></td>
						</tr>
	
						<tr>
							<th align="left">아이디</th>
							<td><input type="text" id="userid" name="userid"
								class="form-control-inputread" placeholder="2runtrip"
								readonly="readonly" value="${dto.userid}"></td>
						</tr> 

						<tr>
							<th>이메일</th>
							<td><input type="text" name="email"
								class="form-control-inputread" readonly="readonly" value="${dto.email}">
							</td>
						</tr>

						<tr>
							<th align="left">휴대폰번호</th>
							<td><input type="text" name="phone" class="form-control-inputbox userhp"
								placeholder="010-0000-1324" value="${dto.phone}"></td>
						</tr>

						<tr>
							<th align="left">비밀번호</th>
							<td><input type="password" name="password" id="pass"
								class="form-control-inputbox userpasswd" placeholder="변경할 비밀번호를 입력해주세요." required="required"></td>
						</tr>
						
						<tr>
							<th align="left">비밀번호 확인</th>
							<td><input type="password" name="passcheck" id="pass2"
								class="form-control-inputbox userpasswd2" placeholder="변경할 비밀번호를 다시 입력해 주세요." required="required"></td>
						</tr>
						
					</table>
					<div class="btn-edit-group">

						<button type="submit" class="btn-update-information" >정보수정하기</button>
					</div>
					</form>
					<form action="/mypage/deleteedit" class="form-memberform">
						<button type="submit" class="btn-delete">탈퇴하기</button>
					</form>		
							

				
			</div>
		</div>
	</div>
</div>		
		
		
		<!-- main 끝 -->

</body>
</html>