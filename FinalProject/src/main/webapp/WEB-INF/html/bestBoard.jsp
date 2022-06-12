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

<!-- root -->
<c:set var="root" value="<%=request.getContextPath()%>" />

<!-- CSS -->
<link rel="stylesheet" href="${root }/css/main.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="${root }/css/shareTripHome.css"/>
<link rel="stylesheet" href="${root }/css/board.css"/>
<style type="text/css"> /* css파일에 적용했더니 안되고, 여기서 작성하면 적용되는 css들..ㅠㅠ */
input.search {
	background-image: url("${root }/image/asset/검색아이콘.png");
	background-repeat: no-repeat;
	background-position: 25px center;
}

a {
	text-decoration: none !important;
	color: #495056;
}

a:hover {
	text-decoration: none !important;
	color: #495056;
}


</style>

<!-- js -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<body>

<div class="home">
	<!-- 본문 시작 -->
	<div class="bulletinBoard">
		
		<!-- 여행공유 홈 헤더-공통 -->
		<div class="tripHeader">
			<div>여행공유</div>
			<span class="verLine">｜</span>&nbsp;<span class="tripHeadMsg">여러분의 특별했던 여행의 순간을 공유해보세요</span>
			<hr class="hr1">
			<!-- 게시판 -->
			<div class="board">
				<span>BEST 게시판</span>
				<span>자유게시판&nbsp;&nbsp;<img src="${root }/image/asset/새글아이콘.png" class="newIcon"></span>
			</div>
			<div class="boardActive">
				<img src="${root }/image/asset/보고있는게시판아이콘.png" class="bestboardActive">
				<img src="${root }/image/asset/보고있는게시판아이콘.png" class="bulboardNoActive" >
			</div>
			<hr>
		</div>
		
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
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>30</td>
						<!-- 제목+첨부파일+댓글수 -->
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진내 꿈속의 2번째 제주도 여행사진내 꿈속의 2번째 제주도 여행사진내 꿈속의 2번째 제주도 여행사진내 꿈속의 2번째 제주도 여행사진내 꿈속의 2번째 제주도 여행사진</span>
							<span class="photo"><img src="${root }/image/asset/첨부이미지아이콘.png"></span>
							<span class="cntComments">[16]</span>
						
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>29</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>28</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>27</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>26</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>25</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>24</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>23</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>22</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
					<tr>
						<td>21</td>
						<td class="subject">
							<span class="subject">내 꿈속의 2번째 제주도 여행사진</span>
						</td>
						<td><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</td>
						<td><fmt:formatDate value="" pattern="yyyy.MM.dd"/>2022.05.11</td>
						<td><fmt:formatNumber value="1412"/></td>
					</tr>
				</tbody>
			</table>
			<hr class="hr2">
			
			<!-- 페이징 -->
			<div class="myPagination">
				<ul class="myPagination">	

						<!-- 현재 페이지 -->
						<li class="myActive"><a href="#"></a>1</li>
						
						<!-- 다른 페이지 -->
						<li class="myNoActive"><a href="#"></a>2</li>
						<li class="myNoActive"><a href="#"></a>3</li>
						<li><a href="#"></a></li>
					
				
				</ul>
			</div>
			
			
		</div>
		
	<!-- 본문 끝 -->



</div>

	
	
	

</div>


</body>
</html>