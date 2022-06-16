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
		<div class="inner review">
			<div class="mypage">
				<div class="mypage-header">
					<div class="mypage-title">마이페이지</div>
					<div class="mypage-menu">
						<ul class="mypage-ul">
							<li class="mypage-li"><a href="${root}/html/myPageEdit">회원정보수정</a></li> <!-- 추후에 맵핑주소 보고 바꾸기 -->
							<li class="mypage-li"><a href="${root}/html/myPageScrap">스크랩</a></li> 
							<li class="mypage-li"><a href="${root}/html/myPageCalendar">마이캘린더</a></li>
							<li class="mypage-li"><a href="${root}/mypage/myPageReview">리뷰</a></li>
						</ul>
					</div>
					<div class="hr"><hr></div>
				</div>
				<form action="update" method="post">
					<input type="hidden" name="currentPage" value="${currentPage}">
					<input type="hidden" name="rnum" value="${dto.rnum}">
					<div class="review-list">
						<div class="review-contents">
							<div class="review-topbox">
								<div class="review-title">
									<a href="#">${dto.title}</a>
									<div class="tripstory-star-ratings">
									<div class="tripstory-star-ratings-fill space-x-2 text-lg"
										style="width: ${dto.rstar*20}%">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</div>
									<div class="tripstory-star-ratings-base space-x-2 text-lg">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</div>
								</div>
								</div>
								<div class="review-edit">
									<div class="review-day"><span>${dto.rday}</span></div>
								</div>
							</div>
							<div class="review-ment">
								<textarea name="rcontents" class="form-control">${dto.rcontents}</textarea>
							</div>
						</div>
						
						<div class="review-button">
							<button type="submit">수정하기</button>
							<button type="button" onclick="history.back()">취소</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>