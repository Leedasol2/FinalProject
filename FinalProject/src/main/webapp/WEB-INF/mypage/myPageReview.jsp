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
									<a href="#">${r.title}</a>
									<div class="tripstory-star-ratings">
									<div class="tripstory-star-ratings-fill space-x-2 text-lg"
										style="width: ratingToPercent+ '%'">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</div>
									<div class="tripstory-star-ratings-base space-x-2 text-lg">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</div>
								</div>
								</div>
								<div class="review-edit">
									<span><a href="#">삭제</a></span>
									<span><a href="#">수정</a></span>
									<div class="review-day"><span>2020-06-01 04:25</span></div>
								</div>
							</div>
							<div class="review-ment">
								<span>${r.rcontents}</span>
							</div>
						</div>
						
						<div class="hr"><hr></div>					
					
					</c:forEach>
				</c:if>
				
			</div>
			<!-- 페이징 -->
		   <c:if test="${totalCount>0}">
		      <div style="width: 800px;text-align: center;">
		         <ul class="pagination">   
		         <!-- 이전 -->
		         <c:if test="${startPage>1}">
		            <li><a href="list?currentPage=${startPage-1}">이전</a></li>
		         </c:if>
		         
		         <c:forEach var="pp" begin="${startPage}" end="${endPage}">
		            <c:if test="${currentPage==pp}">
		               <li class="active"><a href="list?currentPage=${pp}">${pp}</a></li>
		            </c:if>
		            <c:if test="${currentPage!=pp}">
		               <li><a href="list?currentPage=${pp}">${pp}</a></li>
		            </c:if>
		         </c:forEach>
		         
		         <!-- 다음 -->
		         <c:if test="${endPage<totalPage}">
		            <li><a href="list?currentPage=${endPage+1}">다음</a></li>
		         </c:if>
		         </ul>
		      </div>
		   </c:if>
		</div>
	</div>
</div>
</body>
</html>