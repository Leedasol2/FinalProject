<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 본문 시작 -->
	<div class="bestTripText">

		<div class="trip-category">
			<a href="bestTrip" class="best-category tripcategory">베스트 여행지</a><br>
			<br>
			<br> <a href="regionTrip" class="region-category tripcategory">지역별
				여행지</a><br>
			<br>
			<br> <a href="themaTrip" class="themea-category tripcategory">테마별
				여행지</a>
		</div>

		<div class="category-title">
			<span class="main-title">베스트 여행지</span>&nbsp; <span class="sub-title">여행을
				떠나요</span> <span class="title-content">국내 최고 여행지만 골랐다!<br>실제
				여행객들의 생생한 리뷰까지 만나보세요
			</span>
			<hr class="title-line">
		</div>

		<div>
			<input type="hidden" id="tnum" value="${tdto.tnum }">
			<table class="bestTripTable">

				<c:set var="i" value="0" />
				<c:set var="j" value="3" />
				<c:forEach var="tdto" items="${list}" varStatus="status" begin="0"
					end="29">
					<c:if test="${i%j==0 }">
						<tr>
					</c:if>
					<td>
						<div class="trip-content">
							<img src="${root}/image/tripspot/${fn:split(tdto.image,',')[0]}"
								class="trip-img"
								onclick="location.href='myTripDetail?tnum=${tdto.tnum}&currentPage=${currentPage }'">
							<div class="listtop">
								<span class="trip-name">${tdto.title }</span>

								<div class="best-star-rating">

									<div class="tripstory-star-ratings">
										<div class="tripstory-star-ratings-fill space-x-2 text-lg"
											style="width: ${tdto.avgrstar*20+1.5}%">
											<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
										</div>
										<div class="tripstory-star-ratings-base space-x-2 text-lg">
											<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
										</div>
									</div>

								</div>
							</div>
							<div class="trip-explanation">${tdto.intro }</div>
							<div class="listbtm">
								<img src="${root}/image/asset/여행지 위치아이콘.png"> 
								<span class="trip-region">${tdto.location }</span>
							</div>
						</div>
					</td>
					<c:if test="${i%j==j-1 }">
					</c:if>
					<c:set var="i" value="${i+1 }" />
				</c:forEach>

			</table>
		</div>

	</div>
	<!-- 본문 끝 -->
</body>
</html>