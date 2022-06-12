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
<link rel="stylesheet" href="${root }/css/myPageScrap.css" />
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

		<!-- footer 시작 -->
		
		<!-- footer 끝 -->

	</div>
</body>
</html>