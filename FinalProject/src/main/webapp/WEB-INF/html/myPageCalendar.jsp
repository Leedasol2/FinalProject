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
<div class="container">
	<div class="inner calendar">
		<div class="mypage mypage-calendar">
			<div class="mypage-header">
				<div class="mypage-title">마이페이지</div>
				<div class="mypage-menu">
					<ul class="mypage-ul">
						<li class="mypage-li"><a href="#">회원정보수정</a></li>
						<li class="mypage-li"><a href="#">스크랩</a></li>
						<li class="mypage-li"><a href="#">마이캘린더</a></li>
						<li class="mypage-li"><a href="#">리뷰</a></li>
					</ul>
				</div>
				<div class="hr"><hr></div>
			</div>
			
			
			<div id="calendar" class="calendar-main"></div>
		</div>
		
	</div>
</div>
</body>
</html>