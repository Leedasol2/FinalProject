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
<div class="container">
	<div class="inner calendar">
		<div class="mypage mypage-scrap">
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
			
			<div class="scrap-count">
				<div class="scrap-count-title">
					<span>총 스크랩 개수</span> 
					<span>${totalCount}</span>
				</div>
				<div class="scrap-count-icon"><img src="${root}/image/asset/스크랩아이콘.png"></div>
			</div>
		

			<div class="scrap-main">
				<c:forEach var="dto" items="${list }">
					<div class="scrap-content" onclick="location.href='/myTrip/myTripDetail?tnum=${dto.tnum}'">
					
						<c:if test="${dto.part.equals('trip') }">
							<div class="scrap-img"><img src="${root}/image/tripspot/${dto.image}" class="scrap-img"></div>
						</c:if>
						<c:if test="${dto.part.equals('festival') }">
							<div class="scrap-img"><img src="${root}/image/festival/${dto.image}" class="scrap-img"></div>
						</c:if>
						<c:if test="${dto.part.equals('themepark') }">
							<div class="scrap-img"><img src="${root}/image/themepark/${dto.image}" class="scrap-img"></div>
						</c:if>
						
						<div class="scrap-name"><span>${dto.title }</span></div>
					</div>
				</c:forEach>
			
			</div>
		</div>
	</div>
</div>
</body>
</html>