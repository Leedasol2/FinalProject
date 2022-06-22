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
	</div>
	
	<div class = "myTripContainer">
	<section id = "myTrip-start">
	<div class="myTripStart">
					
		<!-- 나만의 여행지 본문 -->
		<div class="myTripBody">
			<div>지금 나에게 <span class="myTripBody">딱</span> 맞는 여행지를 찾으러 떠나 볼까요 ?</div>
			<button onclick="js:begin()">START</button>
		</div>
	</div>
	</section>
	
<section id = "myTrip-qna">
	<div class="myTripStart">
		
		<!-- 나만의 여행지 질문 본문 -->
		<div class="myTripTest">
			
			<div class="question">
			<div class = "qBox">
			<span></span></div>
			</div>
			
			<div class="answer">
				<!-- 기본 noActive, 클릭한 버튼 클래스 active-->
				<!-- <button class="noActive">싱그러운 나무와 꽃들</button>
				<button class="active">구경하는 재미가 있는 건축물</button> -->
			<div class = "answerBox">	
			</div>
			</div>
			
		</div>
	</div>	
</section>
	
	
	<section id="myTrip-result">	
	<div class="myTripStart">	
				
		<!-- 나만의 여행지 본문 -->
		<div class="myTripResult">
			<div class="resultMsg1">이런 여행, 어떠세요?</div>
						
				<div class="resultname"></div><br><br>
				<div class="resultDesc"><span></span></div>
				
			<div>								
			<button class="result" onclick="window.location.reload()"><span>다시하기</span></button>
			<button class="result2" onclick="location.href='/'"><span class = "result2">2RUN TRIP으로 이동</span></button>
			</div>
		</div>
		
		
	</div>		
			           
			
	</section>
	

	<!-- js 파일 추가 -->
	<script src="${root}/js/myTripData.js"></script>	
	<script src="${root}/js/myTripStart.js"></script>
	
	<!-- 본문 끝 -->
	</div>
</body>
</html>
