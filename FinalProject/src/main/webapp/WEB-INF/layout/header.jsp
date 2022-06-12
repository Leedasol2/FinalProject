<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>

<!-- root -->
<c:set var="root" value="<%=request.getContextPath() %>"/>

<!-- CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="${root}/css/reset.css"/>
<link rel="stylesheet" href="${root}/css/main.css"/>
<!-- js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="${root}/js/main.js"></script>
</head>
<body>


	<!-- header 시작 -->
	<div class="header">
			<div class="top-box">
				<div class="inner">
					<div class="search-box">
						<div class="logo">
							<a href="">
								<img alt="2runtrip" src="${root}/image/asset/로고.png">				
							</a>
						</div>
						<div class="search">
							<input type="text" placeholder="이런 여행 없을까? 검색해보세요.">	
						</div>
					</div>
					<div class="member-box">
						<button class="login">로그인</button>
						<button class="join">회원가입</button>
					</div>
				</div>
			</div>
			<div class="bottom-box">
				<div class="inner">
					<ul class="gnb">
						<li>
							<a href="#">여행을 떠나요</a>
							<ul>
								<li>베스트 여행지</li>
								<li>지역별 여행지</li>
								<li>테마별 여행지</li>
							</ul>
						</li>
						<li>
							<a href="#">액티비티</a>
							<ul>
								<li>테마파크</li>
								<li>축제</li>
							</ul>
						</li>
						<li>
							<a href="#">여행 공유</a>
						</li>
						<li>
							<a href="#">나만의 코스짜기</a>
						</li>
					</ul>
					<div class="perfect-trip">
						<button class="perfect-trip-btn">나에게 딱 맞는 여행지는?</button>
					</div>
				</div>
			</div>
		</div> <!-- header 끝 -->

</body>
</html>