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

a:link { /*링크 방문 전*/
    color: #495056;
}
 

a:hover { /*마우스를 올려놓을 때*/
    color: black;
}

</style>

<!-- js -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>


</head>
<body>
	<div class="home">

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
		
		<!-- footer 끝 -->

	</div>
</body>
</html>