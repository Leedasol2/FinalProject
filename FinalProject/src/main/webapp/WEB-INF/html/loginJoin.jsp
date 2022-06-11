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
<link rel="stylesheet" href="${root }/css/loginJoin.css" />
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
	<div class="login-join">
		<p><span class="login-join-title">회원가입</span></p><br>
		<span class="login-join-subtitle1"><a class="acolor">이런여행</a>(2RunTrip)에 오신것을 환영합니다.</span><br>
		<span class="login-join-subtitle2">이런여행 회원이 되어 더욱 다양한 혜택을 누려보세요.</span>

					<table class="login-join-table">
						
						<tr>
						<td class="table-empty1" colspan="2"></td>
						</tr>
						<tr>
						<th class="table-title1">통합 회원가입</th>
						<th class="table-title2">SNS 연동가입</th>
						</tr>			
						<tr>
							<td class="table-content1" rowspan="2"><button type="submit" class="btn-join">회원가입</button></td>
							<td class="table-content2"><button type="submit" class="btn-sns"><img src="${root }/image/asset/카톡아이콘.png" width = "25px" align="top">
							&nbsp;카카오 아이디로 가입하기</button></td>
						</tr>

						<tr>
							<td class="table-content3"><button type="submit" class="btn-sns"><img src="${root }/image/asset/네이버아이콘.png" width = "25px" align="top">
							&nbsp;네이버 아이디로 가입하기</button></td>
						</tr>
						<tr>
						<td class="table-empty2"></td>
						<td class="table-empty3"></td>
						</tr>
						<tr>
						<td class="table-empty4" colspan="2"></td>
						</tr>
						
					</table>
			
	</div>
	</div><!-- main 끝 -->

	
</div>
</body>
</html>