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

		<!-- main 시작 -->
		<div class="mypage-modal-content">
			<div class="mypage-category">
				<span class="mypage-modal-title">마이페이지</span>
				<ul class="mypage">
					<li class="mypage-editmember"><a href="#">회원정보수정</a></li>

					<li class="mypage-scrap"><a href="#">스크랩</a></li>

					<li class="mypage-mycalendar"><a href="#">마이캘린더</a></li>

					<li class="mypage-review"><a href="#">리뷰</a></li>
				</ul>
				<hr class="modal-title-line">
			</div>


			<div class="modal-content">

				<h2 class="modal-title">일정추가하기</h2>
				<hr class="modal-line">
				<!-- Form 시작 -->
				<form class="modal-form" action="#" method="post" name="modalform">

					<!-- 일정내용 -->
					<div class="form-label-group">
						<label for="schedule ">일정내용</label> <br>
						<div class="form-input-box">
							<input type="text" id="schedule" name="schedule"
								class="form-control" placeholder="" required="">
						</div>

					</div>

					<!-- 시작날짜 -->
					<div class="form-label-group">
						<label for="start">시작날짜</label> <br>
						<div class="form-input-box">
							<input type="date" id="start" name="start" class="form-control"
								value="연도-월-일" placeholder="" required="">
						</div>

					</div>

					<!-- 종료날짜 -->
					<div class="form-label-group">
						<label for="end">종료날짜</label> <br>
						<div class="form-input-box">
							<input type="date" id="end" name="end" class="form-control"
								value="연도-월-일" placeholder="" required="">
						</div>
					</div>


					<div class="form-color-group">
						<label for="color">컬러선택</label> <br>
						<div class="modal-box">
							<span class="box1"></span> <span class="box2"></span> <span
								class="box3"></span> <span class="box4"></span> <span
								class="box5"></span> <span class="box6"></span> <span
								class="box7"></span> <span class="box8"></span>

						</div>
					</div>

					<div class="btn_modal">
						<button type="submit" class="btn-add">추가</button>
						<button type="submit" class="btn-cancle">취소</button>

					</div>
				</form>
			</div>


		</div>
		<!-- main 끝 -->

</body>
</html>