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
				<form action="insert" method="post" class="form-loginhome">
					<table class="login-home-table">
						<tr>
							<td><input type="text" name="id" class="form-loginhome-input" placeholder="   아이디" required="required"></td>
						</tr>

						<tr>
							<td><input type="password" name="pass" class="form-loginhome-input" placeholder="   비밀번호" required="required"></td>
						</tr>
					</table>

					<!-- 버튼 -->
					<div class="btn-save">
						<button type="submit" class="login-home-btn-save"><img src="${root }/image/asset/저장.png" width = "17px" class = "btn-login-img-save">
						</button><button type="submit" class="btn-save-text">아이디 저장</button>
					</div>
					<div class="btn-login">
						<button type="submit" class="btn-login-home-login">로그인</button>
					</div>
				</form>
			</div>
			
		<div class="login-home-btn2">
			<button type="submit" class="login-home-btn-find">아이디ㆍ비밀번호 찾기</button>
			<button type="submit" class="login-home-btn-join">회원가입</button>
		</div>
		
		<div class="login-home-btn3">
			<button type="submit" class="btn-login-home-kakao"><img src="${root }/image/asset/카톡원형.png" width = "50px"></button>
			<button type="submit" class="btn-login-home-naver"><img src="${root }/image/asset/네이버원형.png" width = "50px"></button>
		</div>
		
		<br><br><br>
		<hr class="login-home-line">
			
	</div><!-- main 끝 -->

</body>
</html>