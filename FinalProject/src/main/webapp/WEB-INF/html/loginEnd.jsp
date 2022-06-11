<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>

<!-- root -->
<c:set var="root" value="<%=request.getContextPath() %>"/>

<!-- CSS -->
<link rel="stylesheet" href="${root }/css/main.css"/>
<link rel="stylesheet" href="${root }/css/loginEnd.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css"> /* css파일에 적용했더니 안되고, 여기서 작성하면 적용되는 css들..ㅠㅠ */
input.search
{
	background-image: url("${root }/image/asset/검색아이콘.png");
	background-repeat: no-repeat;
	background-position: 25px center;
}

a { text-decoration:none !important;color: #495056; }
a:hover { text-decoration:none !important;color: #495056; }

</style>

<!-- js -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>


</head>
<body>
<div class="home">

	<!-- main 시작 -->
	<div class="main">
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
		<div class = "edong-title">	
		<span class="login-end-title">가입이 완료되었습니다</span>
		</div>
		
		<div class = "edong-subtitle">
		<span class="login-end-subtitle">로그인하여 2RunTrip의 다양한 서비스를 즐겨보세요!</span><br>
		</div>
	
		<button type="submit" class= "btn-end-login">로그인</button>


			


	</div>
	</div><!-- main 끝 -->

	
</div>
</body>
</html>