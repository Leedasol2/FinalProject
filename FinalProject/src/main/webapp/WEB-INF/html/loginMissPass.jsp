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
	<div class="login-misspass">
		<span class="login-misspass-title">아이디/비밀번호를 잊어버리셨나요?</span>
		<ul>			
			<li class="login-misspass-missid"><a href="#" class = "missid">아이디 찾기</a></li>
			
			<li class="login-misspass-misspass">비밀번호 찾기</li>
		</ul>		
		
		<hr class="login-misspass-line-up">		
			<div class="login-misspass-main">
				<form action="insert" method="post" class="form-misspass">
					<table class="login-misspass-table">
						<tr>
							<th class="misspasssubj">이름</th>						
							<td><input type="text" name="name" class="form-misspass-input" placeholder="   실명을 입력해주세요" required="required"></td>
						</tr>

						<tr>
							<th class="misspasssubj">생년월일</th>						
							<td><input type="text" name="birth" class="form-misspass-input" placeholder="   19900101" required="required"></td>
						</tr>
						
						<tr>
							<th class="misspasssubj">아이디</th>						
							<td><input type="text" name="id" class="form-misspass-input" placeholder="   id" required="required"></td>
						</tr>
					</table>

					<!-- 버튼 -->
					<div class="login-misspass-btn-findpass">
						<button type="submit" class="login-misspass-btn-findpass">임시비밀번호 발송</button>
						<button type="submit" class="login-misspass-btn-login">로그인</button>
					</div>
				</form>
			</div>

		<hr class="login-misspass-line">
			
	</div>
<!-- main 끝 -->

</body>
</html>