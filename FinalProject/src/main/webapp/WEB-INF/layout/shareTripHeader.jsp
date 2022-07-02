<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 현재날짜 -->
<c:set var="today" value="<%=new java.util.Date()%>" />
<!-- 최신글 현재날짜+시간 -->
<c:set var="yesterday"><fmt:formatDate value="<%=new Date(new Date().getTime() - 60*60*24*1000) %>" pattern="yyyy-MM-dd hh:mm:ss" /></c:set>


<title>이런여행</title>
</head>
<body>
	<!-- 여행공유 홈 헤더-공통 -->
	<div class="tripHeader">
		<div class="shareTrip">여행공유</div>
		<span class="tripHeadMsg">&nbsp;여러분의 특별했던 여행의 순간을 공유해보세요</span>
		<hr class="hr1">
		<!-- 게시판 -->
		<div class="board">
			<span id="best">BEST 게시판</span>
			<span onclick="location.href='/board/bulletinBoard'" id="bulletin">자유게시판&nbsp;&nbsp;
			<c:if test="${newWrite>yesterday }">
				<span><img src="${root }/image/asset/새글아이콘.png" class="newIcon"></span>
			</c:if>
			</span>
		</div>
		<div class="boardActive">
			<c:if test="${type=='best' }">
				<img src="${root }/image/asset/보고있는게시판아이콘.png" class="bestboardActive" id="bestImg">
			</c:if>
			<c:if test="${type=='bul' }">
				<img src="${root }/image/asset/보고있는게시판아이콘.png" class="bulboardActive" id="bulImg">
			</c:if>
			
		</div>
		<hr>
	</div>
</body>
</html>