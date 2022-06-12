<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이런여행</title>
</head>
<body>
	<!-- 여행공유 홈 헤더-공통 -->
	<div class="tripHeader">
		<div class="shareTrip">여행공유</div>
		<span class="tripHeadMsg">｜&nbsp;여러분의 특별했던 여행의 순간을 공유해보세요</span>
		<hr class="hr1">
		<!-- 게시판 -->
		<div class="board">
			<span>BEST 게시판</span>
			<span>자유게시판&nbsp;&nbsp;<img src="${root }/image/asset/새글아이콘.png" class="newIcon"></span>
		</div>
		<div class="boardActive">
			<img src="${root }/image/asset/보고있는게시판아이콘.png" class="bestboardActive">
			<img src="${root }/image/asset/보고있는게시판아이콘.png" class="bulboardActive" >
		</div>
		<hr>
	</div>
		
</body>
</html>