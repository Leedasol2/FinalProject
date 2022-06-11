<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>
</head>
<body>

	<!-- main 시작 -->
	<div class="main">
	<div class="login-email">
		
		<table class="login-email-header">
			<tr>
			<td class="login-email-email"><img class="login-email" src="${root }/image/asset/이메일인증green.png" width = "25px">&nbsp; 1.이메일 인증</td>
			
			<td><hr class="login-email-line"></td>
			
			<td class="login-email-info"><img class="login-email" src="${root }/image/asset/정보입력black.png" width = "25px">&nbsp; 2.정보입력 및 약관동의</td>
			
			<td><hr class="login-email-line"></td>
			
			<td class="login-email-end"><img class="login-email" src="${root }/image/asset/가입완료black.png" width = "25px">&nbsp; 3.가입완료</td>			
			
			</tr>
		</table>
		
		<br>
		<div class = "edong">	
		<span class="login-email-title">이메일 인증</span>
		</div>
			<table class="login-email-table">
								
					<tr>
					<td class= "login-email-content"><input type="text" name="email" class="form-loginemail-input" 
					placeholder="   이메일 주소를 입력해 주세요." required="required">
					<img class="login-email-content" src="${root }/image/asset/이메일아이콘.png" width = "25px">
					</td>
					<td><button type="submit" class= "btn-email" >인증 요청</button></td>
					</tr>
	
					<tr>
					<td class="login-email-empty"></td>
					</tr>
					
					<tr>
					<td class= "login-email-content"><input type="text" name="code" class="form-loginemail-input" 
					placeholder="   인증코드를 입력해 주세요" required="required">
					<img class="login-email-content" src="${root }/image/asset/x.png" width = "25px">
					</td>
					<td><button type="submit" class= "btn-code">인증 확인</button></td>
					</tr>
						
				</table>
			

				<button type="submit" class= "btn-back"><img class="login-email-back" src="${root }/image/asset/이전으로아이콘.png" width = "25px">이전으로</button>
				&nbsp;
				<button type="submit" class= "btn-next">다음으로<img class="login-email-next" src="${root }/image/asset/다음으로아이콘.png" width = "25px"></button>

	</div>
	</div><!-- main 끝 -->

</body>
</html>