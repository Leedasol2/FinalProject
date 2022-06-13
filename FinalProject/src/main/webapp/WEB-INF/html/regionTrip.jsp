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
	  var currentPosition = parseInt($(".trip-category").css("top"));
	  $(window).scroll(function() {
	    var position = $(window).scrollTop(); 
	    $(".trip-category").stop().animate({"top":position+currentPosition+"px"},1000);
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

</script> 
 
<!-- 본문 시작 -->
<div class="regionTripText">

<div class="trip-category">
  <a href="#1" class="best-category tripcategory">베스트 여행지</a><br><br><br>
  <a href="#2" class="region-category tripcategory">지역별 여행지</a><br><br><br>
  <a href="#3" class="themea-category tripcategory">테마별 여행지</a>
</div>

<div class="category-title">
  <span class="main-title">지역별 여행지</span>&nbsp;
  <span class="sub-title">여행을 떠나요</span>
  <span class="title-content">가고 싶은 지역별 여행지를 골라보세요!<br>실제 여행객들의 생생한 리뷰까지 만나보세요</span>
  <hr class="title-line">
</div>

<div class="regionofkorea">
  <a href="#a" class="seoul region">서울</a>
  <a href="#b" class="incheon-Gyeonggi region">인천/경기</a>
  <a href="#c" class="daejeon-chungcheong region">대전/충청</a>
  <a href="#d" class="daegu region">대전</a>
  <a href="#e" class="jeolla region">전라</a>
  <a href="#f" class="gyeongsang region">경상</a>
  <a href="#g" class="busan region">부산</a>
  <a href="#h" class="gangwon region">강원</a>
  <a href="#i" class="jeju region">제주</a>
</div>

<div class="selectbar">
  <select class="sortselect">
    <option value="topview">추천순</option>
    <option value="lotsofreviews">리뷰많은순</option>
    <option value="highstarscore">별점높은순</option>
    <option value="lowstarscore">별점낮은순</option>
  </select>
</div>

<div>
  <table class="trip-content">
    <tr>
    
      <td>
        <div class="trip-content">
          <img src="${root}/image/asset/여행지이미지(예시).jpg" class="trip-img">
          <span class="trip-name">신평 양조장</span>
          <div class="star-ratings">
		    <div class="star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
		      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
	      <div class="star-ratings-base space-x-2 text-lg">
		    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
        </div>
  		  <span class="trip-explanation">일상 탈출러를 위한 당진</span><br>
 		  <span class="trip-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    충청남도 당진시
 		  </span>
        </div>
      </td>
      
        <td>
        <div class="trip-content">
          <img src="${root}/image/asset/여행지이미지(예시).jpg" class="trip-img">
          <span class="trip-name">신평 양조장</span>
          <div class="star-ratings">
		    <div class="star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
		      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
	      <div class="star-ratings-base space-x-2 text-lg">
		    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
        </div>
  		  <span class="trip-explanation">일상 탈출러를 위한 당진</span><br>
 		  <span class="trip-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    충청남도 당진시
 		  </span>
        </div>
      </td>
      
      <td>
        <div class="trip-content">
          <img src="${root}/image/asset/여행지이미지(예시).jpg" class="trip-img">
          <span class="trip-name">신평 양조장</span>
          <div class="star-ratings">
		    <div class="star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
		      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
	      <div class="star-ratings-base space-x-2 text-lg">
		    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
        </div>
  		  <span class="trip-explanation">일상 탈출러를 위한 당진</span><br>
 		  <span class="trip-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    충청남도 당진시
 		  </span>
        </div>
      </td>
      
    </tr>
    
    <tr>
    
     <td>
        <div class="trip-content">
          <img src="${root}/image/asset/여행지이미지(예시).jpg" class="trip-img">
          <span class="trip-name">신평 양조장</span>
          <div class="star-ratings">
		    <div class="star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
		      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
	      <div class="star-ratings-base space-x-2 text-lg">
		    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
        </div>
  		  <span class="trip-explanation">일상 탈출러를 위한 당진</span><br>
 		  <span class="trip-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    충청남도 당진시
 		  </span>
        </div>
      </td>
      
        <td>
        <div class="trip-content">
          <img src="${root}/image/asset/여행지이미지(예시).jpg" class="trip-img">
          <span class="trip-name">신평 양조장</span>
          <div class="star-ratings">
		    <div class="star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
		      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
	      <div class="star-ratings-base space-x-2 text-lg">
		    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
        </div>
  		  <span class="trip-explanation">일상 탈출러를 위한 당진</span><br>
 		  <span class="trip-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    충청남도 당진시
 		  </span>
        </div>
      </td>
      
      <td>
        <div class="trip-content">
          <img src="${root}/image/asset/여행지이미지(예시).jpg" class="trip-img">
          <span class="trip-name">신평 양조장</span>
          <div class="star-ratings">
		    <div class="star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
		      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
	      <div class="star-ratings-base space-x-2 text-lg">
		    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
        </div>
  		  <span class="trip-explanation">일상 탈출러를 위한 당진</span><br>
 		  <span class="trip-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    충청남도 당진시
 		  </span>
        </div>
      </td>
      
    </tr>
    
    <tr>
    
     <td>
        <div class="trip-content">
          <img src="${root}/image/asset/여행지이미지(예시).jpg" class="trip-img">
          <span class="trip-name">신평 양조장</span>
          <div class="star-ratings">
		    <div class="star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
		      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
	      <div class="star-ratings-base space-x-2 text-lg">
		    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
        </div>
  		  <span class="trip-explanation">일상 탈출러를 위한 당진</span><br>
 		  <span class="trip-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    충청남도 당진시
 		  </span>
        </div>
      </td>
      
        <td>
        <div class="trip-content">
          <img src="${root}/image/asset/여행지이미지(예시).jpg" class="trip-img">
          <span class="trip-name">신평 양조장</span>
          <div class="star-ratings">
		    <div class="star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
		      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
	      <div class="star-ratings-base space-x-2 text-lg">
		    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
        </div>
  		  <span class="trip-explanation">일상 탈출러를 위한 당진</span><br>
 		  <span class="trip-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    충청남도 당진시
 		  </span>
        </div>
      </td>
      
      <td>
        <div class="trip-content">
          <img src="${root}/image/asset/여행지이미지(예시).jpg" class="trip-img">
          <span class="trip-name">신평 양조장</span>
          <div class="star-ratings">
		    <div class="star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
		      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
	      <div class="star-ratings-base space-x-2 text-lg">
		    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	      </div>
        </div>
  		  <span class="trip-explanation">일상 탈출러를 위한 당진</span><br>
 		  <span class="trip-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    충청남도 당진시
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