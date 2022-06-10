<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<!-- root -->
<c:set var="root" value="<%=request.getContextPath() %>"/>

<!-- CSS -->
<link rel="stylesheet" href="${root }/css/main.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="${root }/css/shareTripHome.css"/>
<!-- js -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>


</head>
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
	<div class="shareTripHome">
	
		<!-- 여행공유 홈 헤더 -->
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
				<img src="${root }/image/asset/보고있는게시판아이콘.png" class="bestboardNoActive">
				<img src="${root }/image/asset/보고있는게시판아이콘.png" class="bulboardNoActive">
			</div>
			<hr>
		</div>
		
		
		<!-- 베너 -->
		<img src="${root }/image/asset/여행공유배너.png" class="shareTripBanner">
		
		<!-- 게시글 미리보기 -->
		<div class="boardpreview">
			<table id="">
				<caption>
					<div><span class="bestboard">BEST&nbsp;</span>게시판</div>
				</caption>
				<tbody>
					<tr>
						<td><span id="boardSubject">5월의 여행지 추천 포천 산정호수 둘레길 오리배 with 튤립축제</span></td>
						<td class="boardId"><span><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</span></td>
					</tr>
					<tr>
						<td><span id="boardSubject">5월의 여행지 추천 포천 산정호수 둘레길 오리배 with 튤립축제</span></td>
						<td class="boardId"><span><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</span></td>
					</tr>
					<tr>
						<td><span id="boardSubject">5월의 여행지 추천 포천 산정호수 둘레길 오리배 with 튤립축제</span></td>
						<td class="boardId"><span><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</span></td>
					</tr>
					<tr>
						<td><span id="boardSubject">5월의 여행지 추천 포천 산정호수 둘레길 오리배 with 튤립축제</span></td>
						<td class="boardId"><span><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</span></td>
					</tr>
					<tr>
						<td><span id="boardSubject">5월의 여행지 추천 포천 산정호수 둘레길 오리배 with 튤립축제</span></td>
						<td class="boardId"><span><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</span></td>
					</tr>
				</tbody>
			</table>

			<table id="">
				<caption>
					<div>자유게시판</div>
				</caption>
				<tbody>
					<tr>
						<td><span id="boardSubject">5월의 여행지 추천 포천 산정호수 둘레길 오리배 with 튤립축제</span></td>
						<td class="boardId"><span><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</span></td>
					</tr>
					<tr>
						<td><span id="boardSubject">5월의 여행지 추천 포천 산정호수 둘레길 오리배 with 튤립축제</span></td>
						<td class="boardId"><span><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</span></td>
					</tr>
					<tr>
						<td><span id="boardSubject">5월의 여행지 추천 포천 산정호수 둘레길 오리배 with 튤립축제</span></td>
						<td class="boardId"><span><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</span></td>
					</tr>
					<tr>
						<td><span id="boardSubject">5월의 여행지 추천 포천 산정호수 둘레길 오리배 with 튤립축제</span></td>
						<td class="boardId"><span><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</span></td>
					</tr>
					<tr>
						<td><span id="boardSubject">5월의 여행지 추천 포천 산정호수 둘레길 오리배 with 튤립축제</span></td>
						<td class="boardId"><span><c:out value="${fn:substring('dasolsol', 0, fn:length('dasolsol') - 4)}"/>****</span></td>
					</tr>
				</tbody>
			</table>

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



</body>
</html>