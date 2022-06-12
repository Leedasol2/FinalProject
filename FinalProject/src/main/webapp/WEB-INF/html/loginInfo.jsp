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

	<!-- main 시작 -->n">
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
			<table class="login-info-table">
								
					<tr>
					<td class = "login-info-table-title">이름</td>
					<td class= "login-info-content"><input type="text" name="name" class="form-logineinfo-input" 
					placeholder="   실명을 입력해 주세요.">
					</td>
					</tr>
	
					<tr>
					<td class="login-info-empty"></td>
					</tr>
					
					<tr>
					<td class = "login-info-table-title">이메일</td>
					<td>
						<input type="text" name="email1" class="login-info-input-email1" placeholder="   2RunTrip">
						<b>&nbsp;@&nbsp;</b>
						<input type="text" name="email2" id="email2" class="login-info-input-email2" placeholder="   2RunTrip.com">
					</td>
					</tr>
					
					<tr>
					<td class="login-info-empty"></td>
					</tr>
					
					<tr>
					<td class = "login-info-table-title">아이디</td>
					<td class= "login-info-content"><input type="text" name="id" class="form-logineinfo-input" 
					placeholder="   ID" >
					</td>
					</tr>
					
					<tr>
					<td class="login-info-empty"></td>
					</tr>
					
					<tr>
					<td class = "login-info-table-title">비밀번호</td>
					<td class= "login-info-content"><input type="password" name="pass" class="form-logineinfo-input" 
					placeholder="   비밀번호" >
					</td>
					</tr>
					
					<tr>
					<td class="login-info-empty-small"></td>
					</tr>
															
					<tr>
					<td></td>
					<td class= "login-info-content"><input type="password" name="code" class="form-logineinfo-input" 
					placeholder="   비밀번호를 다시 입력해 주세요">
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
					<td class= "login-info-content"><input type="text" name="code" class="form-logineinfo-input" 
					placeholder="   01012345678">
					</td>
					</tr>
											
				</table>
				
				<div class = "login-info-btn-group1">
				<button type="submit" class= "login-info-btn-check-all"><img class="login-info-check" src="${root }/image/asset/저장.png" width = "20px">&nbsp; 전체동의</button><br>
				<button type="submit" class= "login-info-btn-check"><img class="login-info-check1" src="${root }/image/asset/저장.png" width = "17px">&nbsp; 개인정보 수집 및 이용에 대한 동의 
				<a class="login-info-a-color">(필수)</a></button><br>
				<button type="submit" class= "login-info-btn-check"><img class="login-info-check1" src="${root }/image/asset/저장.png" width = "17px">&nbsp; 개인정보 제 3자 제공에 대한 동의 
				<a class="login-info-a-color">(필수)</a></button><br>
				</div>
			

				<button type="submit" class= "login-info-btn-back"><img class="login-info-back" src="${root }/image/asset/이전으로아이콘.png" width = "25px">이전으로</button>
				&nbsp;
				<button type="submit" class= "login-info-btn-next">다음으로<img class="login-info-next" src="${root }/image/asset/다음으로아이콘.png" width = "25px"></button>

		</div>
<!-- main 끝 -->

</body>
</html>