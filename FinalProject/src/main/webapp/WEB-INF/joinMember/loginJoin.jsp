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
	<div class="login-join">
		<p><span class="login-join-title">회원가입</span></p><br>
		<span class="login-join-subtitle1"><span class="login-join-spancolor">이런여행</span>(2RunTrip)에 오신것을 환영합니다.</span><br>
		<span class="login-join-subtitle2">이런여행 회원이 되어 더욱 다양한 혜택을 누려보세요.</span>

					<table class="login-join-table">
						
						<tr>
						<td class="login-join-table-empty1" colspan="2"></td>
						</tr>
						<tr>
						<th class="login-join-table-title1">통합 회원가입</th>
						<th class="login-join-table-title2">SNS 연동가입</th>
						</tr>			
						<tr>
							<td class="login-join-table-content1" rowspan="3"><button type="submit" class="login-join-btn-join">회원가입</button></td>
							<td class="login-join-table-content2"><button type="submit" class="login-join-btn-sns"><img src="${root }/image/asset/카톡아이콘.png" class= "login-join-snsimg" width = "25px">
							<span class = login-join-text>카카오 아이디로 가입하기</span></button></td>
						</tr>
						
						<tr>
							<td class="login-join-table-empty5"></td>
						</tr>

						<tr>
							<td class="login-join-table-content3"><button type="submit" class="login-join-btn-sns"><img src="${root }/image/asset/네이버아이콘.png" class= "login-join-snsimg" width = "25px">
							<span class ="login-join-text">네이버 아이디로 가입하기</span></button></td>
						</tr>
						<tr>
						<td class="login-join-table-empty2"></td>
						<td class="login-join-table-empty3"></td>
						</tr>
						<tr>
						<td class="login-join-table-empty4" colspan="2"></td>
						</tr>
						
					</table>
			
	</div>
<!-- main 끝 -->

</body>
</html>