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

<!-- root -->
<c:set var="root" value="<%=request.getContextPath() %>"/>

<!-- CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="${root}/css/bestTrip.css"/>
<link rel="stylesheet" href="${root}/css/board.css"/>
<link rel="stylesheet" href="${root}/css/boardDetailPage.css"/>
<link rel="stylesheet" href="${root}/css/festival.css"/>
<link rel="stylesheet" href="${root}/css/festivalCalendar.css"/>
<link rel="stylesheet" href="${root}/css/festivaldetail.css"/>
<link rel="stylesheet" href="${root}/css/loginEmail.css"/>
<link rel="stylesheet" href="${root}/css/loginEmailCheck.css"/>
<link rel="stylesheet" href="${root}/css/loginEnd.css"/>
<link rel="stylesheet" href="${root}/css/loginHome.css"/>
<link rel="stylesheet" href="${root}/css/loginInfo.css"/>
<link rel="stylesheet" href="${root}/css/loginJoin.css"/>
<link rel="stylesheet" href="${root}/css/loginMissId.css"/>
<link rel="stylesheet" href="${root}/css/loginMissPass.css"/>
<link rel="stylesheet" href="${root}/css/main.css"/>
<link rel="stylesheet" href="${root}/css/modalCalendar.css"/>
<link rel="stylesheet" href="${root}/css/myPageCalendar.css"/>
<link rel="stylesheet" href="${root}/css/myPageEdit.css"/>
<link rel="stylesheet" href="${root}/css/myPageReview.css"/>
<link rel="stylesheet" href="${root}/css/myPageScrap.css"/>
<link rel="stylesheet" href="${root}/css/myTrip.css"/>
<link rel="stylesheet" href="${root}/css/mytripdetail.css"/>
<link rel="stylesheet" href="${root}/css/regionTrip.css"/>
<link rel="stylesheet" href="${root}/css/reset.css"/>
<link rel="stylesheet" href="${root}/css/shareTripHome.css"/>
<link rel="stylesheet" href="${root}/css/themaTrip.css"/>
<link rel="stylesheet" href="${root}/css/themePark.css"/>
<link rel="stylesheet" href="${root}/css/themeparkdetail.css"/>
<link rel="stylesheet" href="${root}/css/updateform.css"/>
<link rel="stylesheet" href="${root}/css/writeform.css"/>

<!-- js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="${root}/js/main.js"></script>
<script src="${root}/js/calendar.js"></script>

</head>
<body>

<div class="layout">
	<div class="header">
		<tiles:insertAttribute name="header"/>
	</div>
	<div class="main">
		<tiles:insertAttribute name="main"/>
	</div>
	<div class="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</div>

</body>
</html>