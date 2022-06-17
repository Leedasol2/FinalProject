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
	<div class="login-end">
		
		<table class="login-end-header">
			<tr>
			<td class="login-end-email"><img class="login-end" src="${root }/image/asset/이메일인증black.png" width = "25px">&nbsp; 1.이메일 인증</td>
			
			<td><hr class="login-end-line"></td>
			
			<td class="login-end-info"><img class="login-end" src="${root }/image/asset/정보입력black.png" width = "25px">&nbsp; 2.정보입력 및 약관동의</td>
			
			<td><hr class="login-end-line"></td>
			
			<td class="login-end-end"><img class="login-end" src="${root }/image/asset/가입완료green.png" width = "25px">&nbsp; 3.가입완료</td>			
			
			</tr>
		</table>
		
		<br>
		<div class = "login-end-edong-title">	
		<span class="login-end-title">가입이 완료되었습니다</span>
		</div>
		
		<div class = "login-end-edong-subtitle">
		<span class="login-end-subtitle">로그인하여 2RunTrip의 다양한 서비스를 즐겨보세요!</span><br>
		</div>
	
		<button type="button" class= "btn-login-end-login" onclick="location.href='/loginHome'">로그인</button>
	</div>
<!-- main 끝 -->

</body>
</html>