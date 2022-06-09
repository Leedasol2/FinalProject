<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>

<!-- root -->
<c:set var="root" value="<%=request.getContextPath()%>" />

<!-- CSS -->
<link rel="stylesheet" href="${root }/css/main.css" />
<link rel="stylesheet" href="${root }/css/myPageEdit.css" />
<link rel="stylesheet" href="${root }/css/myPageReview.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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


</head>
<body>
	<div class="home">

		<!-- header 시작 -->
		<div class="header">
			<div class="headercontent">
				<a href="${root }/"><img class="logoimg"
					src="${root }/image/asset/로고.png"></a> <input type="text"
					name="search" class="search" placeholder="이런 여행 없을까? 검색해보세요">
				<button type="button" class="join">마이페이지</button>
				<img class="mainline" src="${root }/image/asset/메인-라인.png">

				<div id="container">
					<ul class="myMenu">
						
					</ul>

				</div>
			</div>
		</div>
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

			<div class="review-main">

				<div class="review-main-content">
					<b>남이섬 축제</b>
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
					<b>남이섬 축제</b>
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
					<b>남이섬 축제</b>
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

		<!-- footer 시작 -->
		<div class="footer">
			<img class="logowhite" src="${root }/image/asset/로고white.png">
			<img class="footerdeco" src="${root }/image/asset/개발도구.png">
			<pre class="pre1">(주) 2RUN TRIP
서울특별시 강남구 이런트립타워 2층		고객센터 : 2222-2222
사업자등록번호: 222-22-22222		이메일 : 2RUN@gmail.com
ⓒ 2022 2Run Trip Company. All Rights Reserved.</pre>
			<pre class="pre2">이다솔
김은비
김태민
이용기
차동현
이강진</pre>
		</div>
		<!-- footer 끝 -->

	</div>
</body>
</html>