<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>
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

		<!-- header 시작 -->
		
		
		<!-- header 끝 -->

		<!-- main 시작 -->
		<div class="mypage-content">
			<div class="mypage-category">
				<span class="mypage-title">마이페이지</span>
				<ul class="mypage">
					<li class="mypage-editmember"><a href="#">회원정보수정</a></li>

					<li class="mypage-scrap"><a href="#">스크랩</a></li>

					<li class="mypage-mycalendar"><a href="#">마이캘린더</a></li>

					<li class="mypage-review"><a href="#">리뷰</a></li>
				</ul>
				<hr class="title-line">
			</div>
			<div id="calendar" class="calendar-main"></div>
		</div>
		<!-- main 끝 -->

		<!-- footer 시작 -->
		
		<!-- footer 끝 -->

</body>
</html>