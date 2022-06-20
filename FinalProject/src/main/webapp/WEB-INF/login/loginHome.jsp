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
	<div class="login-home">
		<span class="login-home-title">로그인</span>
		<hr class="login-home-line-up">		
			<div class="login-home-main">
				<form action="loginmain" method="post" class="form-loginhome">
					<table class="login-home-table">
						<tr>
							<td><input type="text" name="userid" class="form-loginhome-input" placeholder="아이디" required="required"
							value="${sessionScope.saveok==null?"":sessionScope.myid }"></td>
						</tr>

						<tr>
							<td><input type="password" name="password" class="form-loginhome-input" placeholder="비밀번호" required="required"></td>
						</tr>
					</table>

					<!-- 버튼 -->
					<div class="btn-save">
						<input type="checkbox" class="btn-save-text" name="cbsave"
						 ${sessionScope.saveok==null?"":"checked" }>&nbsp;&nbsp;아이디 저장
					</div>
					<div class="btn-login">
						<button type="submit" class="btn-login-home-login">로그인</button>
					</div>
				</form>
			</div>
			
		<div class="login-home-btn2">
			<button type="button" class="login-home-btn-find" onclick="location.href='loginMissId'">아이디ㆍ비밀번호 찾기</button>
			<button type="button" class="login-home-btn-join" onclick="location.href='singup'">회원가입</button>
		</div>
		
		<div class="login-home-btn3">
			<button type="button" class="btn-login-home-kakao"><img src="${root }/image/asset/카톡원형.png" width = "50px"
			onclick="location.href='KakaoLogin'"></button>
			<button type="button" class="btn-login-home-naver"><img src="${root }/image/asset/네이버원형.png" width = "50px"></button>
		</div>
		
		<br><br><br>
		<hr class="login-home-line">
			
	</div><!-- main 끝 -->

</body>
</html>