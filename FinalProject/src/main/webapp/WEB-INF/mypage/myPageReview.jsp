<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>
<script src="${root}/js/review.js"></script>
</head>
<body>
<div class="container">
	<div class="inner review">
		<div class="mypage">
			<div class="mypage-header">
				<div class="mypage-title">마이페이지</div>
				<div class="mypage-menu">
					<ul class="mypage-ul">
						<li class="mypage-li"><a href="${root}/mypage/myPageEdit">회원정보수정</a></li>
						<li class="mypage-li"><a href="${root}/mypage/myPageScrap">스크랩</a></li> 
						<li class="mypage-li"><a href="${root}/mypage/myPageCalendar">마이캘린더</a></li>
						<li class="mypage-li"><a href="${root}/mypage/myPageReview">리뷰</a></li>
					</ul>
				</div>
				<div class="hr"><hr></div>
			</div>
			
			<div class="review-list">
				
				<c:if test="${totalCount==0}">
					<div class="review-count">
						<span class="alert alert-info">등록한 리뷰가 없습니다</span>
					</div>
				</c:if>

					<c:if test="${totalCount>0}">
						<c:forEach var="r" items="${list}">
								<div class="review-contents">
									<div class="review-topbox">
										<div class="review-title">
											<a href="/myTrip/myTripDetail?tnum=${r.tnum}">${r.title}</a>
											<div class="tripstory-star-ratings">
												<div class="tripstory-star-ratings-fill space-x-2 text-lg"
													style="width: ${r.rstar*20}%">
													<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
												</div>
												<div class="tripstory-star-ratings-base space-x-2 text-lg">
													<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
												</div>
											</div>
										</div>
										<div class="review-edit">
											<button type="button" rnum=${r.rnum} currentPage=${currentPage} id="btnDel">삭제</button>
											<button type="button"
												onclick="location.href='myPageReviewEdit?rnum=${r.rnum}$tnum=${r.tnum}&currentPage=${currentPage}'">수정</button>
											<div class="review-day">
												<span>${r.rday}</span>
											</div>
										</div>
									</div>
									<div class="review-ment">
										<span>${r.rcontents}</span>
									</div>
								</div>

								<div class="hr">
									<hr>
								</div>
						</c:forEach>
					</c:if>
				</div>
			<!-- 페이징 -->
			<c:if test="${totalCount>0}">
				<div style="text-align: center;">
					<ul class="pagination">
						<!-- 이전 -->
						<c:if test="${startPage>1}">
							<li><a href="myPageReview?currentPage=${startPage-1}">이전</a></li>
						</c:if>

						<c:forEach var="pp" begin="${startPage}" end="${endPage}">
							<c:if test="${currentPage==pp}">
								<li class="active"><a
									href="myPageReview?currentPage=${pp}">${pp}</a></li>
							</c:if>
							<c:if test="${currentPage!=pp}">
								<li><a href="myPageReview?currentPage=${pp}">${pp}</a></li>
							</c:if>
						</c:forEach>

						<!-- 다음 -->
						<c:if test="${endPage<totalPage}">
							<li><a href="myPageReview?currentPage=${endPage+1}">다음</a></li>
						</c:if>
					</ul>
				</div>
			</c:if>
		</div>
	</div>
</div>
</body>
</html>