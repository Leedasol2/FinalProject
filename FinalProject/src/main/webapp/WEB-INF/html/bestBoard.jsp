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
	<!-- header 시작 -->
	<div class="header">
	  <div class="headercontent">
		<a href="${root }/"><img class="logoimg" src="${root }/image/asset/로고.png"></a>
		<input type="text" name="search" class="search" placeholder="이런 여행 없을까? 검색해보세요">
		<button type="button" class="login">로그인</button>
		<button type="button" class="join">회원가입</button>
		<img class="mainline" src="${root }/image/asset/메인-라인.png">
		
		<div id="container">
		<ul class="myMenu">
		    <li class="menu1">
		        <a href="#"><img alt="" src="${root }/image/asset/여행을떠나요아이콘.png">
		        &nbsp;&nbsp;여행을 떠나요
		        <img class="submenuicon1" src="${root }/image/asset/서브메뉴아이콘.png"></a>
		        <ul class="menu1_s submenu">
		            <li>베스트 여행지</li>
		            <li>지역별 여행지</li>
		            <li>테마별 여행지</li>
		        </ul>   
		    </li>
		    <li class="menu2">
		    	<a href="#"><img alt="" src="${root }/image/asset/액티비티아이콘.png">
		        &nbsp;&nbsp;액티비티
		        <img class="submenuicon2" src="${root }/image/asset/서브메뉴아이콘.png"></a>
		        <ul class="menu2_s submenu">
		            <li>테마파크</li>
		            <li>축제</li>
		        </ul>   
		    </li>
		    <li class="menu3"><a href="#"><img alt="" src="${root }/image/asset/여행공유아이콘.png">&nbsp;&nbsp;여행 공유</a></li>
		    <li class="menu4"><a href="#"><img alt="" src="${root }/image/asset/나만의코스짜기아이콘.png">&nbsp;&nbsp;나만의 코스짜기</a></li>   
		</ul>
		
		<button type="button" class="findtrip">나에게 딱 맞는 여행지는?</button>
		</div>
	  </div>
	</div> <!-- header 끝 -->

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


	<!-- footer 시작 -->
	<div class="footer">
		<img class="logowhite" src="${root }/image/asset/로고white.png">
		<img class="footerdeco" src="${root }/image/asset/개발도구.png">
		<pre class="pre1">(주) 2RUN TRIP
서울특별시 강남구 이런트립타워 2층		고객센터 : 2222-2222
사업자등록번호: 222-22-22222		이메일 : 2RUN@gmail.com
ⓒ 2022 2Run Trip Company. All Rights Reserved.</pre>
		<pre class="pre2">이다솔
김은비
김태민
이용기
차동현
이강진</pre>
	</div><!-- footer 끝 -->


</div>

	
	
	

</div>


</body>
</html>