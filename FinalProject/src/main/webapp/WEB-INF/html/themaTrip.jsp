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
$("a.sea").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("a.mountain-valley").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("a.citytour").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("a.rural-experience").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("a.unique-experience").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("a.history").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("a.other").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");	
});

</script> 

<!-- 본문 시작 -->
<div class="themaTripText">

<div class="trip-category">
  <a href="bestTrip" class="best-category tripcategory">베스트 여행지</a><br><br><br>
  <a href="regionTrip" class="region-category tripcategory">지역별 여행지</a><br><br><br>
  <a href="themaTrip" class="themea-category tripcategory">테마별 여행지</a>
</div>

<div class="category-title">
  <span class="main-title">테마별 여행지</span>&nbsp;
  <span class="sub-title">여행을 떠나요</span>
  <span class="title-content">자연부터 농촌체험,이색체험까지!<br>테마별 여행지를 사용자 리뷰와 함께 만나보세요</span>
  <hr class="title-line">
</div>

<div class="themeaofkorea">
  <a href="#a" class="sea themea">바다</a>
  <a href="#b" class="mountain-valley themea">산/계곡</a>
  <a href="#c" class="citytour themea">도시관광</a>
  <a href="#d" class="rural-experience themea">농촌체험</a>
  <a href="#e" class="unique-experience themea">이색체험</a>
  <a href="#f" class="history themea">역사</a>
  <a href="#g" class="other themea">기타</a>
</div>

<div class="sortselectbar">
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
          <div class="thema-star-rating">
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
          <div class="thema-star-rating">
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
          <div class="thema-star-rating">
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
      
    </tr>
    
    <tr>
    
     <td>
        <div class="trip-content">
          <img src="${root}/image/asset/여행지이미지(예시).jpg" class="trip-img">
          <span class="trip-name">신평 양조장</span>
          <div class="thema-star-rating">
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
          <div class="thema-star-rating">
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
          <div class="thema-star-rating">
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
      
    </tr>
    
    <tr>
    
      <td>
        <div class="trip-content">
          <img src="${root}/image/asset/여행지이미지(예시).jpg" class="trip-img">
          <span class="trip-name">신평 양조장</span>
          <div class="thema-star-rating">
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
          <div class="thema-star-rating">
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
          <div class="thema-star-rating">
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
      
    </tr>
     
  </table>
</div>

</div>
<!-- 본문 끝 -->

</body>
</html>