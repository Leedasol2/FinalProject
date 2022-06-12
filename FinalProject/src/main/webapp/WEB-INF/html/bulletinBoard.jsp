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
</head>
<body>

	<!-- 본문 시작 -->
	<div class="bulletinBoard">

		<!-- 게시판이름 + 글쓰기 버튼 -->
		<div class="bulBoardHeader">
			<span class="bulBoard">자유게시판</span>
			<span class="writeBul">
				<button class="writeBul">글쓰기</button>
			</span>
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
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>556</td>
						<!-- 제목+첨부파일+댓글수+새글 -->
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진내 꿈속의 2번째 제주도 여행사진내 꿈속의 2번째 제주도 여행사진내 꿈속의 2번째 제주도 여행사진내 꿈속의 2번째 제주도 여행사진내 꿈속의 2번째 제주도 여행사진</span>
							<span class="photo"><img src="${root }/image/asset/첨부이미지아이콘.png"></span>
							<span class="cntComments">[16]</span>
							<span><img src="${root }/image/asset/새글아이콘.png"></span>
						
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 2)}"/>**</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>556</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 2)}"/>**</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>556</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 2)}"/>**</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>556</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 2)}"/>**</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>556</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 2)}"/>**</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>556</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 2)}"/>**</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>556</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 2)}"/>**</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>556</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 2)}"/>**</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>556</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 2)}"/>**</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>556</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 2)}"/>**</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
				</tbody>
			</table>
			<hr class="hr2">
			
			<!-- 페이징 -->
			<div class="myPagination">
				<ul class="myPagination">	
				<!-- 이전 -->
				
					<li><a href="#"><&nbsp;&nbsp;이전</a>&nbsp;&nbsp;<span>｜</span></li>
					
				
						<!-- 현재 페이지 -->
						<li class="myActive"><a href="#"></a>1</li>
						<!-- 다른 페이지 -->
						<li class="myNoActive"><a href="#"></a>2</li>
						<li class="myNoActive"><a href="#"></a>3</li>
						<li class="myNoActive"><a href="#"></a>4</li>
						<li class="myNoActive"><a href="#"></a>5</li>
						<li class="myNoActive"><a href="#"></a>6</li>
						<li class="myNoActive"><a href="#"></a>7</li>
						<li class="myNoActive"><a href="#"></a>8</li>
						<li class="myNoActive"><a href="#"></a>9</li>
						<li class="myNoActive"><a href="#"></a>10</li>
						<li><a href="#"></a></li>
					
				
				<!-- 다음 -->
				
					<li><span>｜</span>&nbsp;&nbsp;<a href="#">다음&nbsp;&nbsp;></a></li>
				
				</ul>
			</div>
		</div>
</div>	
	<!-- 본문 끝 -->

</body>
</html>