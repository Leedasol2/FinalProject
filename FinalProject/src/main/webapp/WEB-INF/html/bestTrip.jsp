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

</script> 

<!-- 본문 시작 -->
<div class="bestTripText">

<div class="trip-category">
  <a href="#1" class="best-category tripcategory">베스트 여행지</a><br><br><br>
  <a href="#2" class="region-category tripcategory">지역별 여행지</a><br><br><br>
  <a href="#3" class="themea-category tripcategory">테마별 여행지</a>
</div>

<div class="category-title">
  <span class="main-title">베스트 여행지</span>&nbsp;
  <span class="sub-title">여행을 떠나요</span>
  <span class="title-content">국내 최고 여행지만 골랐다!<br>실제 여행객들의 생생한 리뷰까지 만나보세요</span>
  <hr class="title-line">
</div>

<div>
  <table class="bestTripTable">
    <tr>
    
      <td>
        <div class="trip-content">
          <img src="${root}/image/asset/여행지이미지(예시).jpg" class="trip-img">
          <span class="trip-name">신평 양조장</span>
          <div class="theme-star-rating">
              <input type="radio" id="5-stars" name="rating" value="5" />
              <label for="5-stars" class="star">&#9733;</label>
              <input type="radio" id="4-stars" name="rating" value="4" />
              <label for="4-stars" class="star">&#9733;</label>
              <input type="radio" id="3-stars" name="rating" value="3" />
              <label for="3-stars" class="star">&#9733;</label>
              <input type="radio" id="2-stars" name="rating" value="2" />
              <label for="2-stars" class="star">&#9733;</label>
              <input type="radio" id="1-star" name="rating" value="1" />
              <label for="1-star" class="star">&#9733;</label>
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