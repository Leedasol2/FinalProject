<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="${root}/js/fescalendar.js"></script>
<link rel="stylesheet" href="${root}/css/festivalCalendar.css"/>

<!-- 현재날짜 -->
<c:set var="today" value="<%=new java.util.Date()%>" />

<title>이런여행</title>


 <!-- fullcalendar -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.6.0/main.min.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/fullcalendar@5.6.0/main.min.js"></script>
 

</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	  var currentPosition = parseInt($(".festival-category").css("top"));
	  $(window).scroll(function() {
	    var position = $(window).scrollTop(); 
	    $(".festival-category").stop().animate({"top":position+currentPosition+"px"},1000);
	  });
	});
</script> 
 
<!-- 본문 시작 -->
<div class="festival-main">

<div class="festival-category">
  <a href="${root }/myTrip/themeParkList" class="themepark-category themecategory">테마파크</a><br><br><br>
  <a href="${root }/myTrip/festivalList" class="festivals-category themecategory">축제</a><br><br><br>
</div>

<div class="category-title">
  <span class="main-title">축제</span>
  <span class="sub-title">액티비티</span>
  <hr class="festival-title-line">
</div>
<div class="festival-main-proceeding">
<div class="festival-proceeding">

<div class="festival-main-title">
  <span class="proceeding-title">지금 진행중인 축제</span>
  <img class="title-img" alt="" src="${root }/image/asset/축제아이콘.png">
  <a href="${root }/myTrip/festivalList" class="festival-calendar">리스트로 보기></a>
</div>
<div id="calendarBox">
<div id="calendar" class="festivalcalendar-main"></div>
</div>
</div>



 <hr class="middle-line">
 
 <div id="festivalcalendar-content" class="festivalcalendar-content">
 	<div class="festivalcalendar-information">축제정보</div>
 	
 	<%-- <input type="hidden" id="festotalCount" value="${festotalCount }"> --%>
 	<c:forEach var="calendar" items="${calendarlist }">
	<c:if test="${calendar.endday>=today }">
 	<br> 	
 	<div class="festivalcalendar-content-inner">
 	
 	<img src="${root}/image/festival/${fn:split(calendar.image,',')[0]}" class="festivalcalendar-img"
 	onclick="location.href='festivalDetail?tnum=${calendar.tnum}&currentPage=${currentPage }'">
 	
		<div class="festivalcalendar-contents">
		<div class="festivalcalendar-first">${calendar.title }</div>  <div class="festivalcalendar-day">[${calendar.beginday}-${calendar.endday}]<br><br></div>
		<div class="festivalcalendar-two">${calendar.intro}<br></div>

		</div> 	
 	</div>
 	
 		</c:if>
	</c:forEach>
			
	
 </div> 
 </div>
</div>
<!-- 본문 끝 -->


</body>
</html>