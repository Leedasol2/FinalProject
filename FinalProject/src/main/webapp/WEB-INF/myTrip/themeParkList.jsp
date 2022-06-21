<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<script type="text/javascript">
function () {
	

$(document).ready(function(){
	  var currentPosition = parseInt($(".trip-category").css("top"));
	  $(window).scroll(function() {
	    var position = $(window).scrollTop(); 
	    $(".trip-category").stop().animate({"top":position+currentPosition+"px"},1000);
	  });
	});
	
	
//지역 선택시 글씨색 변경
$("span.seoul").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("span.incheon").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});

$("span.Gyeonggi").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});

$("span.daejeon").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});

$("span.chungcheong").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});

$("span.daegu").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("span.jeolla").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("span.gyeongsang").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("span.busan").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("span.gangwon").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});
$("span.jeju").click(function(){
	$(this).css("color","#2bae66");
	$(this).siblings().css("color","gray");
});

$("div.regionofkorea > span").click(function(){
	
	var CurrentRegion=$(this).text();
			
	$.ajax({
		
		type:"post",
		dataType: "text",
		url:"RegionChange",
		data:{"CurrentRegion":CurrentRegion},
		success:function(data){
			
		$('body').html(data);
		
		}
	});
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
  <span class="seoul region">서울</span> 
  <span  class="incheon region">인천</span>
  <span  class="Gyeonggi region">경기</span> 
  <span  class="daejeon region">대전</span>
  <span  class="chungcheong region">충청</span>
  <span  class="daegu region">대구</span>
  <span  class="jeolla region">전라</span>
  <span  class="gyeongsang region">경상</span>
  <span  class="busan region">부산</span>
  <span  class="gangwon region">강원</span>
  <span  class="jeju region">제주</span>
</div>

<div>
  <table class="theme-content">
  
  <c:set var="i" value="0" />
   <c:set var="j" value="3" />
   <c:set var="selectregion" value="서울" />
   <c:forEach var="dto" items="${themeparklist }" varStatus="stauts">
   <c:if test="${dto.region== selectregion }">
   <c:if test="${i%j==0 }">
   <tr>
   </c:if>
   

      <td>
        <div class="theme-content">
          <img src="${root}/image/themepark/${fn:split(dto.image,',')[0]}" class="theme-img"
          onclick="location.href='themeParkDetail?tnum=${dto.tnum}&currentPage=${currentPage }'">
          
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
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">${dto.location }
 		  </span>
        </div>
      </td>
      </c:if>
      
    <c:if test="${i%j==j-1 }">
    </tr>
    </c:if>
	<c:set var="i" value="${i+1 }"/>
	</c:forEach>
  </table>
</div>

</div>
<!-- 본문 끝 -->

</body>
</html>