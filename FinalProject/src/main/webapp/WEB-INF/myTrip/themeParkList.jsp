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
$("a.incheon").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});

$("a.Gyeonggi").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});

$("a.daejeon").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});

$("a.chungcheong").click(function(){
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
  <a href="${root }/myTrip/themeParkList" class="themepark-category themecategory">테마파크</a><br><br><br>
  <a href="${root }/festival/festivalList" class="festival-category themecategory">축제</a><br><br><br>
</div>

<div class="theme-category-title">
  <span class="main-title">테마파크</span>
  <span class="sub-title">액티비티</span>
  <span class="title-content">가고 싶은 지역별 테마파크를 골라보세요!<br>실제 여행객들의 생생한 리뷰까지 만나보세요</span>
  <hr class="theme-title-line">
</div>

<div class="regionofkorea">
  <a href="#a" onclick="location.href=''" class="seoul region">서울</a>
  <a href="#b" class="incheon region">인천</a>
  <a href="#c" class="Gyeonggi region">경기</a> 
  <a href="#d" class="daejeon region">대전</a>
  <a href="#e" class="chungcheong region">충청</a>
  <a href="#f" class="daegu region">대구</a>
  <a href="#g" class="jeolla region">전라</a>
  <a href="#h" class="gyeongsang region">경상</a>
  <a href="#i" class="busan region">부산</a>
  <a href="#j" class="gangwon region">강원</a>
  <a href="#k" class="jeju region">제주</a>
</div>

<div>
  <table class="theme-content">
  
  <c:forEach var="dto" items="${list }">
  
    <tr>
    
      <td>
        <div class="theme-content">
          <img src="${root}/image/themepark/${dto.image}" class="theme-img">
          <span class="theme-name">${dto.title }</span>
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
 		  		${dto.location }
 		  </span>
        </div>
      </td>
      
    
      
    </tr>
      </c:forEach>
  </table>
</div>

</div>
<!-- 본문 끝 -->

</body>
</html>