<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>
</head>
<body>

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

			<div class="review-main">

				<div class="review-main-content">
					<b class="festival-name">남이섬 축제</b>
					<div class="star-ratings">
						<div class="star-ratings-fill space-x-2 text-lg"
							:style="{ width: ratingToPercent + '%' }">
							<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
						</div>
						<div class="star-ratings-base space-x-2 text-lg">
							<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
						</div>
					</div>
					
					<form id="btn-form" action="" class="btn-form">
						<input type="button" onclick="" value="삭제" class="btn-delete">
						<b>|</b>
						<input type="button" onclick="" value="수정" class="btn-update">
						<span class="form-date"><b>  2020-06-01 04:25 </b></span>				
					</form>
					
					<div class="review-content">
						<span class="review-contents">좋은 취지의 페스티벌! 하루종일 힐링하는기분이였어요. 누워있어도 괜찮다는 메세지와 멋진 아티스트의 무대가 너무 행복한 하루였습니다.</span>
						<hr class="content-line">
					</div>
				</div>
				
				<div class="review-main-content">
					<b class="festival-name">남이섬 축제</b>
					<div class="star-ratings">
						<div class="star-ratings-fill space-x-2 text-lg"
							:style="{ width: ratingToPercent + '%' }">
							<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
						</div>
						<div class="star-ratings-base space-x-2 text-lg">
							<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
						</div>
					</div>
					
					<form id="btn-form" action="" class="btn-form">
						<input type="button" onclick="" value="삭제" class="btn-delete">
						<b>|</b>
						<input type="button" onclick="" value="수정" class="btn-update">
						<span class="form-date"><b>  2020-06-01 04:25 </b></span>				
					</form>
					
					<div class="review-content">
						<span class="review-contents">좋은 취지의 페스티벌! 하루종일 힐링하는기분이였어요. 누워있어도 괜찮다는 메세지와 멋진 아티스트의 무대가 너무 행복한 하루였습니다.</span>
						<hr class="content-line">
					</div>
				</div>
				
				<div class="review-main-content">
					<b class="festival-name">남이섬 축제</b>
					<div class="star-ratings">
						<div class="star-ratings-fill space-x-2 text-lg"
							:style="{ width: ratingToPercent + '%' }">
							<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
						</div>
						<div class="star-ratings-base space-x-2 text-lg">
							<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
						</div>
					</div>
					
					<form id="btn-form" action="" class="btn-form">
						<input type="button" onclick="" value="삭제" class="btn-delete">
						<b>|</b>
						<input type="button" onclick="" value="수정" class="btn-update">
						<span class="form-date"><b>  2020-06-01 04:25 </b></span>				
					</form>
					
					<div class="review-content">
						<span class="review-contents">좋은 취지의 페스티벌! 하루종일 힐링하는기분이였어요. 누워있어도 괜찮다는 메세지와 멋진 아티스트의 무대가 너무 행복한 하루였습니다.</span>
						<hr class="content-line">
					</div>
				</div>
			</div>
		</div>
		<!-- main 끝 -->

</body>
</html>