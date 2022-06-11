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
	<div class="login-emailcheck">
		<span class="login-emailcheck-title"><img src="${root }/image/asset/o.png" width = "25px">이메일 중복확인</span><br>
		<form action="insert" method="post" class="form-loginemailcheck">
				<table class="login-emailcheck-table">
					
					<tr>
					<td class = "table-title" colspan="2"><img class = "email-black" src="${root }/image/asset/이메일black.png" width = "32px">&nbsp;E-mail</td>
					</tr>
					
					<tr>
					<td class = "empty-table"></td>
					</tr>
				
					<tr>
						<td><input type="text" name="email1" class="form-login-emailcheck-input" > <a>@</a>
							<input type="text" name="email2" id="email2" class="form-login-emailcheck-input" > 
							<select id="selemail" class = "sel-box">
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
				
		<div class="btn-login">
				<button type="submit" class="btn-check">중복확인</button>
				<button type="submit" class="btn-use">사용하기</button>
		</div>
			
	</div>
	</div><!-- main 끝 -->

</body>
</html>