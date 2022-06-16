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
	  var currentPosition = parseInt($(".theme-category").css("top"));
	  $(window).scroll(function() {
	    var position = $(window).scrollTop(); 
	    $(".theme-category").stop().animate({"top":position+currentPosition+"px"},1000);
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
<div class="theme-main">

<div class="theme-category">
  <a href="#1" class="themepark-category themecategory">테마파크</a><br><br><br>
  <a href="#2" class="festival-category themecategory">축제</a><br><br><br>
</div>

<div class="theme-category-title">
  <span class="main-title">테마파크</span>
  <span class="sub-title">액티비티</span>
  <span class="title-content">가고 싶은 지역별 테마파크를 골라보세요!<br>실제 여행객들의 생생한 리뷰까지 만나보세요</span>
  <hr class="theme-title-line">
</div>

<div class="regionofkorea">
  <a href="#a" class="seoul region">서울</a>
  <a href="#b" class="incheon-Gyeonggi region">인천/경기</a>
  <a href="#c" class="daejeon-chungcheong region">대전/충청</a>
  <a href="#d" class="daegu region">대구</a>
  <a href="#e" class="jeolla region">전라</a>
  <a href="#f" class="gyeongsang region">경상</a>
  <a href="#g" class="busan region">부산</a>
  <a href="#h" class="gangwon region">강원</a>
  <a href="#i" class="jeju region">제주</a>
</div>

<div>
  <table class="theme-content">
    <tr>
    
      <td>
        <div class="theme-content">
          <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="theme-img">
          <span class="theme-name">제주 신화월드 테마파크</span>
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
			
 		  <span class="theme-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    제주도 서귀포시
 		  </span>
        </div>
      </td>
      
     <td>
       <div class="theme-content">
          <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="theme-img">
          <span class="theme-name">제주 신화월드 테마파크</span>
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
			
 		  <span class="theme-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    제주도 서귀포시
 		  </span>
        </div>
        
        <td>
        <div class="theme-content">
          <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="theme-img">
          <span class="theme-name">제주 신화월드 테마파크</span>
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
			
 		  <span class="theme-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    제주도 서귀포시
 		  </span>
        </div>
      </td>
      
    </tr>
    
    <tr>   
    <td>
        <div class="theme-content">
          <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="theme-img">
          <span class="theme-name">제주 신화월드 테마파크</span>
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
			
 		  <span class="theme-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    제주도 서귀포시
 		  </span>
        </div>
      </td>
      
      <td>
        <div class="theme-content">
          <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="theme-img">
          <span class="theme-name">제주 신화월드 테마파크</span>
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
			
 		  <span class="theme-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    제주도 서귀포시
 		  </span>
        </div>
      </td>
      
       <td>
        <div class="theme-content">
          <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="theme-img">
          <span class="theme-name">제주 신화월드 테마파크</span>
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
			
 		  <span class="theme-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    제주도 서귀포시
 		  </span>
        </div>
      </td>
      
    </tr>
    
    <tr>   
    <td>
        <div class="theme-content">
          <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="theme-img">
          <span class="theme-name">제주 신화월드 테마파크</span>
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
			
 		  <span class="theme-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    제주도 서귀포시
 		  </span>
        </div>
      </td>
      
      <td>
        <div class="theme-content">
          <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="theme-img">
          <span class="theme-name">제주 신화월드 테마파크</span>
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
			
 		  <span class="theme-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    제주도 서귀포시
 		  </span>
        </div>
      </td>
      
       <td>
        <div class="theme-content">
          <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="theme-img">
          <span class="theme-name">제주 신화월드 테마파크</span>
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
			
 		  <span class="theme-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    제주도 서귀포시
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