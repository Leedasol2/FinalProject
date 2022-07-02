<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>

<!-- 현재날짜 -->
<c:set var="today" value="<%=new java.util.Date()%>" />
<!-- 최신글 현재날짜+시간 -->
<c:set var="yesterday"><fmt:formatDate value="<%=new Date(new Date().getTime() - 60*60*24*1000) %>" pattern="yyyy-MM-dd hh:mm:ss" /></c:set>


</head>
<body>

	<!-- 본문 시작 -->
	<div class="bulletinBoard">

		<!-- 게시판이름 -->
		<div class="bestBoardHeader">
			<span class="bulBoard">BEST 게시판</span>
		</div>
		<hr class="hr2">
		<div>
			<!-- 리스트 테이블 -->
			<table class="bulBoard">
				<thead>
					<tr>
						<td>번호</td>
						<td class="subject">제목</td>
						<td>작성자</td>
						<td>작성일</td>
						<td>조회수</td>
						<td>추천수</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="dto" items="${bestlist }" varStatus="i">
						<tr>
						<td>${no }</td>
						<c:set var="no" value="${no-1 }"></c:set>
						<!-- 제목+첨부파일+댓글수+새글 -->
						<td class="subject">
							<a href="detail?bnum=${dto.bnum }&currentPage=${currentPage }&type=best">
								<span class="subject">${dto.subject }</span>
								
								<c:if test="${dto.photo!='no' }">
									<span class="photo">&nbsp;<img src="${root }/image/asset/첨부이미지아이콘.png"></span>
								</c:if>
								
								<c:if test="${dto.commentCnt>0 }">
									<span class="cntComments">[${dto.commentCnt }]</span>
								</c:if>
								
								<!-- 현재 시간으로부터 하루이내에 쓰인 글인지 검사 -->
								<c:if test="${dto.writeday>yesterday }">
									&nbsp;<span><img src="${root }/image/asset/새글아이콘.png"></span>
								</c:if>
							</a>
						</td>
						
						<td><c:out value="${fn:substring(dto.writer, 0, fn:length(dto.writer) - 2)}"/>**</td>
						<td><fmt:formatDate value="${dto.writeday }" pattern="yyyy.MM.dd"/></td>
						<td><fmt:formatNumber value="${dto.views }"/></td>
						<td><fmt:formatNumber value="${dto.likes }"/></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<hr class="hr2">
			
			<!-- 페이징 -->
			<c:if test="${totalBoardCnt>0}">
				<div class="myPagination">
					<ul class="myPagination">	

					<c:forEach var="pp" begin="1" end="3">
						<c:if test="${currentPage==pp}">
							<!-- 현재 페이지 -->
							<li class="myActive"><a href="bestBoard?currentPage=${pp}">${pp}</a></li>
						</c:if>
						<c:if test="${currentPage!=pp}">
							<!-- 다른 페이지 -->
							<li class="myNoActive"><a href="bestBoard?currentPage=${pp}">${pp}</a></li>
						</c:if>
					</c:forEach>
					

					</ul>
				</div>
			</c:if>
			
			
		</div>
		
	<!-- 본문 끝 -->



</div>


</body>
</html>