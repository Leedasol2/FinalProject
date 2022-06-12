<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

//지역 선택시 글씨색 변경
$("a.seoul").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("a.incheon-Gyeonggi").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("a.daejeon-chungcheong").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("a.daegu").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("a.jeolla").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("a.gyeongsang").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("a.busan").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("a.gangwon").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("a.jeju").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
	});
});
</script> 
 
<!-- 본문 시작 -->
<div class="festival-main">

<div class="festival-category">
  <a href="#1" class="themepark-category themecategory">테마파크</a><br><br><br>
  <a href="#2" class="festivals-category themecategory">축제</a><br><br><br>
</div>

<div class="category-title">
  <span class="main-title">축제</span>
  <span class="sub-title">액티비티</span>
  <hr class="title-line">
</div>

<div class="festival-proceeding">
  <span class="proceeding-title">지금 진행중인 축제</span>
  <img class="title-img" alt="" src="${root }/image/asset/축제아이콘.png">
  <a href="#" class="festival-calendar">달력으로 보기></a>
</div>

<div>
  <table class="festival-content">
    <tr>
    
      <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
      <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
      
     <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
    </tr>
    
    <tr>
    
     <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
      
       <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
      <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
    </tr>
    
    <tr>
    
    <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
       <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
     <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
    </tr>
     
  </table>
</div>

</div>
<!-- 본문 끝 -->

</body>
</html>