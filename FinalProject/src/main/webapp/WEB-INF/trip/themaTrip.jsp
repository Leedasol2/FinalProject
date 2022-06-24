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
$(function(){
	
$(document).ready(function(){
	  var currentPosition = parseInt($(".trip-category").css("top"));
	  $(window).scroll(function() {
	    var position = $(window).scrollTop(); 
	    $(".trip-category").stop().animate({"top":position+currentPosition+"px"},1000);
	  });
	});
	
//지역 선택시 글씨색 변경
	$("div.themeaofkorea > span").click(function(){
		
		var CurrentTheme=$(this).text();
		
		$(this).css("color","#2bae66");
		$("div.themeaofkorea > span").css("color","gray");
		
		$.ajax({
			
			type:"post",
			dataType: "text",
			url:"ThemeChange",
			data:{"CurrentTheme":CurrentTheme},
			success:function(data){
				
			$('body').html(data);
			
			}
		});
	});

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
  <span class="sea themea">바다</span>
  <span class="mountain themea">산</span>
  <span class="valley themea">계곡</span>
  <span class="citytour themea">도시관광</span>
  <span class="rural-experience themea">농촌체험</span>
  <span class="unique-experience themea">이색체험</span>
  <span class="history themea">역사</span>
  <span class="other themea">기타</span>
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
   
	<c:set var="i" value="0" />
   <c:set var="j" value="3" />
   <c:forEach var="theme" items="${themeList }" varStatus="stauts">
   <c:if test="${i%j==0 }">
   <tr>
   </c:if>
   
      <td>
        <div class="trip-content">
          <img src="${root}/image/tripspot/${fn:split(theme.image,',')[0]}" class="trip-img"
          onclick="location.href='myTripDetail?tnum=${theme.tnum}&currentPage=${currentPage }'">
          
          <span class="trip-name">${theme.title }</span>
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
  		  <span class="trip-explanation">${theme.title }</span><br>
 		  <span class="trip-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">${theme.location }
 		  </span>
        </div>
      </td>
      
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