<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>
<script type="text/javascript">
$(function(){
	$(".searchtext").on("keyup",function(key) {
		if( key.keyCode == 13 ){
			var searchtext = $(this).val(); 
			location.href='/search/searchTrip?searchtext='+searchtext;
		}
	});
});
</script>
</head>
<body>

	<!-- header 시작 -->
	<div class="header">
			<div class="top-box">
				<div class="inner">
					<div class="search-box">
						<div class="logo">
							<a href="/">
								<img alt="2runtrip" src="${root}/image/asset/로고.png">				
							</a>
						</div>
						<div class="search">
							<input type="text" placeholder="이런 여행 없을까? 검색해보세요." class="searchtext">	
						</div>
					</div>
					<div class="member-box">
						<!-- 로그아웃 상태 -->
						<c:if test="${empty sessionScope.loginok}">
						<button class="login" onclick="location.href='/loginHome'">로그인</button>
						</c:if>
						<c:if test="${empty sessionScope.loginok}">
						<button class="join" onclick="location.href='/joinMember/loginJoin'">회원가입</button>
						</c:if>
						
						<!-- 로그인 상태 -->
						<c:if test="${not empty sessionScope.loginok}">
						<b>${sessionScope.myid }님</b>
						<button class="logout" onclick="location.href='/logout'">로그아웃</button>
						</c:if>
						<c:if test="${not empty sessionScope.loginok}">
						<button class="join" onclick="location.href='/html/myPageEdit'">마이페이지</button>
						</c:if>
					</div>
				</div>
			</div>
			<div class="bottom-box">
				<div class="inner">
					<ul class="gnb">
						<li>
							<a href="bestTrip">여행을 떠나요</a>
							<ul>
								<li onclick="location.href='bestTrip'">베스트 여행지</li>
								<li onclick="location.href='regionTrip'">지역별 여행지</li>
								<li onclick="location.href='themaTrip'">테마별 여행지</li>
							</ul>
						</li>
						<li>
							<a href="themePark">액티비티</a>
							<ul>
								<li onclick="location.href='/myTrip/themeParkList'">테마파크</li>
								<li onclick="location.href='/festival/festivalList'">축제</li>
							</ul>
						</li>
						<li>
							<a href="/board/shareTripHome">여행 공유</a>
						</li>
						<li>
							<a href="#">나만의 코스짜기</a>
						</li>
					</ul>
					<div class="perfect-trip">
						<button class="perfect-trip-btn" onclick="location.href='/board/myTripStart'">나에게 딱 맞는 여행지는?</button>
					</div>
				</div>
			</div>
		</div> <!-- header 끝 -->

</body>
</html>