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
	
	//이메일 셀렉트바
	$("#selemail").on("change",function(){

		if($(this).val()=='_'){
			$("#email2").val(''); //지정된 메일 지우기
		}else{
			$("#email2").val($(this).val()); //선택한 값주기
		}
	});

	//이메일 중복확인
	$(".login-emailcheck-btn-check").on("click",function(){

		var frontemail=$('input[id=email1]').val();
		var backemail=$('input[id=email2]').val();
	
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
	        	$(".login-emailcheck-failemailmessage").css("display","none");
	        	$(".login-emailcheck-message").css("display","inline-block");
	            $(".login-emailcheck-failmessage").css("display","none");
	        } else{
	        	$(".login-emailcheck-failemailmessage").css("display","none");
	        	$(".login-emailcheck-message").css("display","none");
	            $(".login-emailcheck-failmessage").css("display","inline-block");
	            $("#email1").val("");
	            $("#email2").val("");
				$("#email1").focus();
	       }
	     }
	   });
	}else{
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
				//console.log(email);
				key = data;
				$(".email-code").fadeIn(500).delay(4000).fadeOut(500);
			}
		});
	});

	//인증코드 일치하는지
	$(".login-email-btn-code").on("click",function() {
		if ($(".form-code-input").val() == key) {   //인증 키 값을 비교를 위해 텍스트인풋과 벨류를 비교
			$(".email-codeok").css("display","inline-block");
			$(".email-codefail").css("display","none");
			$(".login-email-content2").attr("src","${root}/image/asset/o.png");
			$("input[name=code]").attr("readonly",true);
			$(".codebackcolor").css("background-color","gainsboro");
		} else {
			$(".email-codefail").css("display","inline-block");
		}
	});

});

//모달창 사용하기 버튼 클릭시 이메일 입력
function modalClose()
{
	var frontemail=$('input[id=email1]').val();
	var backemail=$('input[id=email2]').val();

	if( frontemail != "" && backemail != "" )  {
	var email='';
    $('input[name=email]').map(function(){
    	
    	email += $(this).val();
    });
  
    $('input[name=uesemail]').val(email);
    $("#loginemail-modal").modal('hide');
    $(".login-email-content1").attr("src","${root}/image/asset/이메일black.png")
	} else{
		$(".login-emailcheck-failemailmessage").css("display","inline-block");
		$(".login-emailcheck-message").css("display","none");
		$(".login-emailcheck-failmessage").css("display","none");
		return false;
	}
}

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

</script>

</head>
<body>

	<!-- main 시작 -->
<div class="login-email">

	<table class="login-email-header">
	  <tr>
		<td class="login-email-email">
		  <img class="login-email" src="${root }/image/asset/이메일인증green.png" width = "25px">
	      &nbsp; 1.이메일 인증
		</td>

		<td>
		  <hr class="login-email-line">
		</td>

		<td class="login-email-info">
		  <img class="login-email" src="${root }/image/asset/정보입력black.png" width = "25px">
		  &nbsp; 2.정보입력 및 약관동의
		</td>

		<td>
		  <hr class="login-email-line">
		</td>

		<td class="login-email-end">
		  <img class="login-email" src="${root }/image/asset/가입완료black.png" width = "25px">
		  &nbsp; 3.가입완료
		</td>
	  </tr>
	</table>

	<br>

	<div class = "login-email-edong">
	  <span class="login-email-title">이메일 인증</span>
	</div>

		<table class="login-email-table">
		  <tr>
		    <td class= "login-email-content">
		      <input type="text" name="uesemail" class="form-loginemail-input" id="email"
			  placeholder="이메일 주소를 입력해 주세요." required="required" readonly="readonly"
			  data-toggle="modal" data-target="#loginemail-modal">
		      <img class="login-email-content1" src="${root }/image/asset/이메일아이콘.png" width = "25px">
			</td>

		    <td>
              <button type="button" class= "login-email-btn-email" id="sendMail">인증 요청</button>
			</td>
		  </tr>

		  <tr>
			<td class="login-email-empty"></td>
		  </tr>

		  <tr>
		    <td class= "login-email-content codebackcolor">
		      <input type="text" name="code" class="form-code-input codebackcolor"
			  placeholder="인증코드를 입력해 주세요" required="required">
			  <img class="login-email-content2" src="${root }/image/asset/x.png" width = "25px">
			</td>

			<td>
			  <button type="button" class= "login-email-btn-code" >인증 확인</button>
			</td>
		  </tr>
		</table>

		<span class="email-code">이메일로 인증코드를 발송했습니다.</span>
		<span class="email-codeok">인증이 완료되었습니다.</span>
		<span class="email-codefail">인증코드가 일치하지 않습니다.</span>
		<span class="email-notyet">이메일 인증이 완료되지 않았습니다.</span>

	<div class = "login-email-btn-group1">
	  <button type="button" class= "login-email-btn-back" onclick="location.href='/joinMember/loginJoin'">
	  <img class="login-email-back" src="${root }/image/asset/이전으로아이콘.png" width = "25px">이전으로</button>

	  <button type="submit" class= "login-email-btn-next" onclick="nextInfoFail(); nextInfo();">
	  다음으로<img class="login-email-next" src="${root }/image/asset/다음으로아이콘.png" width = "25px"></button>
	</div>
</div><!-- main 끝 -->

	
 <!-- 이메일 인증확인 Modal-->
 <!-- css확인시 loginEmailCheck.css로 갈것 -->
  <div class="modal fade loginemail" id="loginemail-modal" role="dialog" aria-hidden="true">
    <div class="modal-loginemail-dialog" role="document">
	<div class="login-emailcheck">
	
		<span class="login-emailcheck-title">
	<img src="${root }/image/asset/o.png" width = "25px">이메일 중복확인</span>
	<br>

	<form action="insert" method="post" class="form-loginemailcheck">
			<table class="login-emailcheck-table">

				<tr>
				  <td class = "login-emailcheck-table-title" colspan="2">
				  <img class = "login-emailcheck-email-black" src="${root }/image/asset/이메일black.png" width = "32px">
				  &nbsp;E-mail</td>
				</tr>

				<tr>
				  <td class = "login-emailcheck-empty-table"></td>
				</tr>

				<tr>
					<td><input type="text" name="email" id="email1" class="form-login-emailcheck-input" >
						<input name="email" value="@" readonly="readonly" class="form-login-emailcheck-connectinput">
						<input type="text" name="email" id="email2" class="form-login-emailcheck-input" >
						<select id="selemail" class = "login-emailcheck-sel-box">
							<option value="_">직접입력</option>
							<option value="naver.com">네이버</option>
							<option value="gmail.com">구글</option>
							<option value="daum.net">다음</option>
							<option value="nate.com">네이트</option>
					</select></td>
				</tr>
			</table>
	</form>

	<hr class="login-emailcheck-line-up">
	
	  <span class = "login-emailcheck-message">사용 가능한 이메일입니다.</span>
	  <span class = "login-emailcheck-failmessage">중복된 이메일입니다.</span>
      <span class = "login-emailcheck-failemailmessage">이메일 형식을 확인해 주세요.</span>

	<div class="login-emailcheck-btn-login">
			<button type="button" class="login-emailcheck-btn-check">중복확인</button>
			<button type="button" class="login-emailcheck-btn-use" onclick="modalClose()">사용하기</button>
	</div>
</div>
</div>

  </div>
  
</body>
</html>