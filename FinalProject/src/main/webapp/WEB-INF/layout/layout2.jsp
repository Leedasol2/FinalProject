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
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">

<!-- 이다솔 -->
<link rel="stylesheet" href="${root}/css/board.css"/>
<link rel="stylesheet" href="${root}/css/myTrip.css"/>
<link rel="stylesheet" href="${root}/css/shareTripHome.css"/>

<!-- 이용기 -->
<link rel="stylesheet" href="${root}/css/modalCalendar.css"/>
<link rel="stylesheet" href="${root}/css/myPageCalendar.css"/>
<link rel="stylesheet" href="${root}/css/myPageEdit.css"/>
<link rel="stylesheet" href="${root}/css/myPageReview.css"/>
<link rel="stylesheet" href="${root}/css/myPageScrap.css"/>
<link rel="stylesheet" href="${root}/css/themePark.css"/>
<link rel="stylesheet" href="${root}/css/festival.css"/>
<link rel="stylesheet" href="${root}/css/festivalCalendar.css"/>

<!-- 차동현 -->
<link rel="stylesheet" href="${root}/css/bestTrip.css"/>
<link rel="stylesheet" href="${root}/css/themaTrip.css"/>
<link rel="stylesheet" href="${root}/css/regionTrip.css"/>
<link rel="stylesheet" href="${root}/css/boardDetailPage.css"/>
<link rel="stylesheet" href="${root}/css/boardupdateform.css"/>
<link rel="stylesheet" href="${root}/css/boardwriteform.css"/>

<!-- 이강진 -->
<link rel="stylesheet" href="${root}/css/themeParkDetail.css"/>
<link rel="stylesheet" href="${root}/css/festivalDetail.css"/>
<link rel="stylesheet" href="${root}/css/myTripDetail.css"/>

<!-- 김태민 -->
<link rel="stylesheet" href="${root}/css/loginEmail.css"/>
<link rel="stylesheet" href="${root}/css/loginEmailCheck.css"/>
<link rel="stylesheet" href="${root}/css/loginEnd.css"/>
<link rel="stylesheet" href="${root}/css/loginHome.css"/>
<link rel="stylesheet" href="${root}/css/loginInfo.css"/>
<link rel="stylesheet" href="${root}/css/loginJoin.css"/>
<link rel="stylesheet" href="${root}/css/loginMissId.css"/>
<link rel="stylesheet" href="${root}/css/loginMissPass.css"/>

<!-- 김은비 -->
<link rel="stylesheet" href="${root}/css/main.css"/>
<link rel="stylesheet" href="${root}/css/reset.css"/>

<!-- js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>


<script src="${root}/js/main.js"></script>
<script src="${root}/js/festival.js"></script>
<script src="${root}/js/shareTripHeader.js"></script>
<script src="${root}/js/boardwriteform.js"></script>
<script src="${root}/js/boardupdateform.js"></script>



</head>
<body>

<div class="layout">
	<div class="header">
		<tiles:insertAttribute name="header"/>
	</div>
	<div class="shareTripHeader">
		<tiles:insertAttribute name="shareTripHeader"/>
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