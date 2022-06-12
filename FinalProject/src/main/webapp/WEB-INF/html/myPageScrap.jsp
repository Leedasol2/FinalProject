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

			<div class="scrp-main">

				<div class="scrap-count" style="width: 800px;">
					<b>총 스크랩 개수 ${totalCount }</b> <span class="scrap-logo"> <img
						src="${root}/image/asset/스크랩아이콘.png">
					</span>
				</div>

				<div>
					<table class="scarp-content">
						<tr>
							<td>
								<div class="scrap-content">
									<img src="${root}/image/asset/스크랩.png" class="scrap-img">
									<br>
									<br> <span class="scrap-name"><b>남이섬 어쿠스틱 청춘
											페스티벌</b></span>
								</div>
							</td>

							<td>
								<div class="scrap-content">
									<img src="${root}/image/asset/스크랩.png" class="scrap-img">
									<br>
									<br> <span class="scrap-name"><b>남이섬 어쿠스틱 청춘
											페스티벌</b></span>
								</div>
							</td>

							<td>
								<div class="scrap-content">
									<img src="${root}/image/asset/스크랩.png" class="scrap-img">
									<br>
									<br> <span class="scrap-name"><b>남이섬 어쿠스틱 청춘
											페스티벌</b></span>
								</div>
							</td>
						</tr>
						
						<tr>
							<td>
								<div class="scrap-content">
									<img src="${root}/image/asset/스크랩.png" class="scrap-img">
									<br>
									<br> <span class="scrap-name"><b>남이섬 어쿠스틱 청춘
											페스티벌</b></span>
								</div>
							</td>

							<td>
								<div class="scrap-content">
									<img src="${root}/image/asset/스크랩.png" class="scrap-img">
									<br>
									<br> <span class="scrap-name"><b>남이섬 어쿠스틱 청춘
											페스티벌</b></span>
								</div>
							</td>

							<td>
								<div class="scrap-content">
									<img src="${root}/image/asset/스크랩.png" class="scrap-img">
									<br>
									<br> <span class="scrap-name"><b>남이섬 어쿠스틱 청춘
											페스티벌</b></span>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<!-- main 끝 -->

</body>
</html>