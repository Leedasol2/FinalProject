<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>

<!-- root -->
<c:set var="root" value="<%=request.getContextPath()%>" />

<!-- CSS -->
<link rel="stylesheet" href="${root }/css/main.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="${root }/css/myTrip.css"/>
<style type="text/css"> /* css파일에 적용했더니 안되고, 여기서 작성하면 적용되는 css들..ㅠㅠ */
input.search {
	background-image: url("${root }/image/asset/검색아이콘.png");
	background-repeat: no-repeat;
	background-position: 25px center;
}

a {
	text-decoration: none !important;
	color: #495056;
}

a:hover {
	text-decoration: none !important;
	color: #495056;
}


</style>

<!-- js -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<body>
<div class="home">

	<!-- 본문 시작 -->
	<div class="myTripStart">
		<hr class="hr1">
		<!-- 나만의 여행지 헤더 -->
		<div class="myTripHeader">나에게 딱 맞는 여행지 찾기</div>
		
		<!-- 나만의 여행지 본문 -->
		<div class="myTripTest">
			
			<div class="question">
				<span>당신이 더 선호하는 볼거리는?</span>
			</div>
			
			<div class="answer">
				<!-- 기본 noActive, 클릭한 버튼 클래스 active-->
				<button class="noActive">싱그러운 나무와 꽃들</button>
				<button class="active">구경하는 재미가 있는 건축물</button>
			</div>
			
			<button class="next active">다음</button>
			
			
			
			
			
			
			
			
			
			
		</div>
		
		
		
	</div>
	<!-- 본문 끝 -->



</div>



</body>
</html>
