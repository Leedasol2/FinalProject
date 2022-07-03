<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 현재날짜 -->
<c:set var="today" value="<%=new java.util.Date()%>" />

<title>이런여행</title>

</head>

<body>
	<!-- 본문 시작 -->
	<div class="festival-list-main">
		<div class="festival-list-category">
			<ul class="sidebar">
				<li><a href="${root }/myTrip/themeParkList">테마파크</a></li>
				<li><a href="${root }/myTrip/festivalList">축제</a></li>
			</ul>
		</div>

		<div class="container">
			<div class="list-category-title">
				<div class="main-title">축제</div>
				<div class="sub-title">액티비티</div>
			</div>

			<div class="title-line">
				<hr>
			</div>

			<div class="festival-proceeding">
				<div class="title">지금 진행중인 축제</div>
				<div class="festival-calendar">
					<a href="${root }/myTrip/festivalCalendar">달력으로 보기 </a>
				</div>
			</div>

			<div class="festival-list">


				<c:forEach var="festival" items="${festivallist }">



					<div class="festival-list-content">

						<img
							src="${root}/image/festival/${fn:split(festival.image,',')[0]}"
							class="festival-img"
							onclick="location.href='festivalDetail?tnum=${festival.tnum}&currentPage=${currentPage }'">

						<div class="name-box">
							<div class="festival-name">
								<a href="#">${festival.title }</a>
							</div>
						</div>

						<div class="festival-region">${festival.location }</div>

					</div>
				</c:forEach>

			</div>
		</div>
	</div>
	<!-- 본문 끝 -->

</body>
</html>