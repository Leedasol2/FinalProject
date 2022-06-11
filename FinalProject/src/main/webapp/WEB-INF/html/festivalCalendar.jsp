<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- root -->
<c:set var="root" value="<%=request.getContextPath() %>"/>

<!-- CSS -->
<link rel="stylesheet" href="${root }/css/main.css"/>
<link rel="stylesheet" href="${root }/css/festivalCalendar.css? after"/>
<link href="${root }/css/myPageCalendar.css? after" rel="stylesheet">
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
<script type="text/javascript">

$(function(){

	//지역 선택시 글씨색 변경
	$("a.seoul").click(function(){
		$(this).css("color","#2bae66");
		$(this).siblings().css("color","gray");
	});
	$("a.incheon-Gyeonggi").click(function(){
		$(this).css("color","#2bae66");
		$(this).siblings().css("color","gray");
	});
	$("a.daejeon-chungcheong").click(function(){
		$(this).css("color","#2bae66");
		$(this).siblings().css("color","gray");
	});
	$("a.daegu").click(function(){
		$(this).css("color","#2bae66");
		$(this).siblings().css("color","gray");
	});
	$("a.jeolla").click(function(){
		$(this).css("color","#2bae66");
		$(this).siblings().css("color","gray");
	});
	$("a.gyeongsang").click(function(){
		$(this).css("color","#2bae66");
		$(this).siblings().css("color","gray");
	});
	$("a.busan").click(function(){
		$(this).css("color","#2bae66");
		$(this).siblings().css("color","gray");
	});
	$("a.gangwon").click(function(){
		$(this).css("color","#2bae66");
		$(this).siblings().css("color","gray");
	});
	$("a.jeju").click(function(){
		$(this).css("color","#2bae66");
		$(this).siblings().css("color","gray");
	});
});

</script>
<script src="js/calendar.js"></script>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {
			locale : 'ko',
			initialView : 'dayGridMonth'
		});
		calendar.render();
	});
</script>
</head>
<body>
 
<script type="text/javascript">

$(document).ready(function(){
	  var currentPosition = parseInt($(".festival-category").css("top"));
	  $(window).scroll(function() {
	    var position = $(window).scrollTop(); 
	    $(".festival-category").stop().animate({"top":position+currentPosition+"px"},1000);
	  });
	});

</script> 
 
<!-- 헤더 시작 -->

<!-- 헤더 끝 -->

<!-- 본문 시작 -->
<div class="festival-main">

<div class="festival-category">
  <a href="#1" class="themepark-category themecategory">테마파크</a><br><br><br>
  <a href="#2" class="festivals-category themecategory">축제</a><br><br><br>
</div>

<div class="category-title">
  <span class="main-title">축제</span>
  <span class="sub-title">액티비티</span>
  <hr class="title-line">
</div>

<div class="festival-proceeding">
  <span class="proceeding-title">지금 진행중인 축제</span>
  <img class="title-img" alt="" src="${root }/image/asset/축제아이콘.png">
  <a href="#" class="festival-calendar">리스트로 보기></a>
</div>

<div id="calendar" class="festivalcalendar-main"></div>

 <hr class="middle-line">
 
 <div class="festivalcalendar-content">
 	<span class="festivalcalendar-information">6월1일축제정보</span>
 	<br>
 	<div class="festivalcalendar-content-inner">
 	<img src="${root}/image/asset/festivalcalendar.png" class="festivalcalendar-img">
		<div class="festivalcalendar-contents">
		<span class="festivalcalendar-first">여름 수국 축제</span>  <span class="festivalcalendar-day">[2022-06-01-2022-07-03]<br><br></span>
		<span class="festivalcalendar-two">화당숲이 6월 1일부터 7월 초까지 한달여 간 <여름 수국 축제>를 진행한다.<br></span>
		<span class="festivalcalendar-three">산록이 푸르름을 더해가며 초여름에 가장 아름다움을 뿜내는 '여름 수국 축제'를 통해<br></span>
		<span class="festivalcalendar-four">100여 품종의 7만여 본의 다채롭고 화려한 수국의 향연을 만끽할 수 있다.<br><br></span>
		<span class="festivalcalendar-five">화당숲 입구를 시작으로 수국원을 비롯한 원내 곳곳에서 100여종 7만여 본의<br></span>
		<span class="festivalcalendar-six">다채로운 수국 무리가 저마다의 빛깔로 물결을 이루며 나들이 객을 반긴다.</span>
		</div> 	
 	</div>
 	
 	 
 	<div class="festivalcalendar-content-inner">
 	<img src="${root}/image/asset/festivalcalendar.png" class="festivalcalendar-img">
		<div class="festivalcalendar-contents">
		<span class="festivalcalendar-first">여름 수국 축제</span>  <span class="festivalcalendar-day">[2022-06-01-2022-07-03]<br><br></span>
		<span class="festivalcalendar-two">화당숲이 6월 1일부터 7월 초까지 한달여 간 <여름 수국 축제>를 진행한다.<br></span>
		<span class="festivalcalendar-three">산록이 푸르름을 더해가며 초여름에 가장 아름다움을 뿜내는 '여름 수국 축제'를 통해<br></span>
		<span class="festivalcalendar-four">100여 품종의 7만여 본의 다채롭고 화려한 수국의 향연을 만끽할 수 있다.<br><br></span>
		<span class="festivalcalendar-five">화당숲 입구를 시작으로 수국원을 비롯한 원내 곳곳에서 100여종 7만여 본의<br></span>
		<span class="festivalcalendar-six">다채로운 수국 무리가 저마다의 빛깔로 물결을 이루며 나들이 객을 반긴다.</span>
		</div> 	
 	</div>
 	
	<div class="festivalcalendar-content-inner">
 	<img src="${root}/image/asset/festivalcalendar.png" class="festivalcalendar-img">
		<div class="festivalcalendar-contents">
		<span class="festivalcalendar-first">여름 수국 축제</span>  <span class="festivalcalendar-day">[2022-06-01-2022-07-03]<br><br></span>
		<span class="festivalcalendar-two">화당숲이 6월 1일부터 7월 초까지 한달여 간 <여름 수국 축제>를 진행한다.<br></span>
		<span class="festivalcalendar-three">산록이 푸르름을 더해가며 초여름에 가장 아름다움을 뿜내는 '여름 수국 축제'를 통해<br></span>
		<span class="festivalcalendar-four">100여 품종의 7만여 본의 다채롭고 화려한 수국의 향연을 만끽할 수 있다.<br><br></span>
		<span class="festivalcalendar-five">화당숲 입구를 시작으로 수국원을 비롯한 원내 곳곳에서 100여종 7만여 본의<br></span>
		<span class="festivalcalendar-six">다채로운 수국 무리가 저마다의 빛깔로 물결을 이루며 나들이 객을 반긴다.</span>
		</div> 	
 	</div> 	
 	
 	
 </div> 
 	

</div>
<!-- 본문 끝 -->

<!-- 푸터 시작 -->

<!-- 푸터 끝 -->

</body>
</html>