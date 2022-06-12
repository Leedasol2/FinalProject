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
<link rel="stylesheet" href="${root }/css/loginMissId.css" />
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
	<div class="login-missid">
		<span class="login-missid-title">아이디/비밀번호를 잊어버리셨나요?</span>
		<ul>
			
			<li class="login-missid">아이디 찾기</li>
			
			<li class="login-misspass"><a href="#" class = "misspass">비밀번호 찾기</a></li>
		</ul>		
		
		<hr class="login-missid-line-up">		
			<div class="login-missid-main">
				<form action="insert" method="post" class="form-missid">
					<table class="login-missid-table">
						<tr>
							<th class="missidsubj">이름</th>						
							<td><input type="text" name="name" class="form-missid-input" placeholder="   실명을 입력해주세요" required="required"></td>
						</tr>

						<tr>
							<th class="missidsubj">생년월일</th>						
							<td><input type="text" name="birth" class="form-missid-input" placeholder="   19900101" required="required"></td>
						</tr>
						
						<tr>
							<th class="missidsubj">아이디</th>						
							<td><input type="text" name="id" class="form-missid-id" placeholder="   여기에 아이디가 뿅" readonly="readonly"></td>
						</tr>
					</table>

					<!-- 버튼 -->
					<div class="btn-findid">
						<button type="submit" class="btn-findid">아이디찾기</button>
						<button type="submit" class="btn-login">로그인</button>
					</div>
				</form>
			</div>

		<hr class="login-missid-line">
			
	</div>
	</div><!-- main 끝 -->

	
</div>
</body>
</html>