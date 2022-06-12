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
</head>
<body>

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





</body>
</html>
