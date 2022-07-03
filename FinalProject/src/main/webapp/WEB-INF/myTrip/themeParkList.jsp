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
	$("div.regionofkorea > span").click(function(){
		
		var CurrentRegion=$(this).text();
		
		
		
		$.ajax({
			
			type:"post",
			dataType: "text",
			url:"themeChange",
			data:{"CurrentRegion":CurrentRegion},
			success:function(data){
				
			$('body').html(data);
			colorChange();			
			}	
		});
		
	});
});		



function colorChange(){
	var CurrentRegion=$(this).text();
	var regiontext='${regiontext}';
	
	 if(CurrentRegion=='서울' || regiontext=='서울'){
	       $("span.seoul").css("color","#2bae66");
	       $("span.seoul").siblings().css("color","gray");
	    }else if(CurrentRegion=='인천' || regiontext=='인천'){
	       $("span.incheon").css("color","#2bae66");
	       $("span.incheon").siblings().css("color","gray");
	    }else if(CurrentRegion=='경기' || regiontext=='경기'){
	       $("span.Gyeonggi").css("color","#2bae66");
	       $("span.Gyeonggi").siblings().css("color","gray");
	    }else if(CurrentRegion=='대전' || regiontext=='대전'){
	       $("span.daejeon").css("color","#2bae66");
	       $("span.daejeon").siblings().css("color","gray");
	    }else if(CurrentRegion=='충청' || regiontext=='충청'){
	       $("span.chungcheong").css("color","#2bae66");
	       $("span.chungcheong").siblings().css("color","gray");
	    }else if(CurrentRegion=='대구' || regiontext=='대구'){
	       $("span.daegu").css("color","#2bae66");
	       $("span.daegu").siblings().css("color","gray");
	    }else if(CurrentRegion=='전라' || regiontext=='전라'){
	       $("span.jeolla").css("color","#2bae66");
	       $("span.jeolla").siblings().css("color","gray");
	    }else if(CurrentRegion=='경상' || regiontext=='경상'){
	       $("span.gyeongsang").css("color","#2bae66");
	       $("span.gyeongsang").siblings().css("color","gray");
	    }else if(CurrentRegion=='부산' || regiontext=='부산'){
	       $("span.busan").css("color","#2bae66");
	       $("span.busan").siblings().css("color","gray");
	    }else if(CurrentRegion=='강원' || regiontext=='강원'){
	       $("span.gangwon").css("color","#2bae66");
	       $("span.gangwon").siblings().css("color","gray");
	    }else if(CurrentRegion=='제주' || regiontext=='제주'){
	       $("span.jeju").css("color","#2bae66");
	       $("span.jeju").siblings().css("color","gray");
	    } 
}


</script> 
 
<!-- 본문 시작 -->
<div class="theme-main">

<div class="theme-category">
  <a href="${root }/myTrip/themeParkList" class="themepark-category themecategory">테마파크</a><br><br><br>
  <a href="${root }/myTrip/festivalList" class="festival-category themecategory">축제</a><br><br><br>
</div>

<div class="theme-category-title">
  <span class="main-title">테마파크</span>
  <span class="sub-title">액티비티</span>
  <span class="title-content">가고 싶은 지역별 테마파크를 골라보세요!<br>실제 여행객들의 생생한 리뷰까지 만나보세요</span>
  <hr class="theme-title-line">
</div>

<div class="regionofkorea">
  <span class="seoul region">서울</span>
  <span class="incheon region">인천</span>
  <span class="Gyeonggi region">경기</span>
  <span class="daejeon region">대전</span>
  <span class="chungcheong region">충청</span>
  <span class="daegu region">대구</span>
  <span class="jeolla region">전라</span>
  <span class="gyeongsang region">경상</span>
  <span class="busan region">부산</span>
  <span class="gangwon region">강원</span>
  <span class="jeju region">제주</span>
</div>



<div class="theme-allcontent">

<c:forEach var="theme" items="${themeparklist}">
    <div class="theme-content">
      <img src="${root}/image/themepark/${fn:split(theme.image,',')[0]}" class="theme-img"
       onclick="location.href='themeParkDetail?tnum=${theme.tnum}&currentPage=${currentPage }'">
       <div class="listtop">
       <div class="theme-name">${theme.title }</div>
       
   		<div class="best-star-rating themepark">

			<div class="tripstory-star-ratings">
				<div class="tripstory-star-ratings-fill space-x-2 text-lg"
					style="width: ${theme.avgrstar*20+1.5}%">
					<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
				</div>
				<div class="tripstory-star-ratings-base space-x-2 text-lg">
					<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
				</div>
			</div>
		
		</div>
	</div>
		 <div class="theme-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    ${theme.location }
 		 </div>
     </div>  
</c:forEach>    
</div>

</div>
<!-- 본문 끝 -->

<!-- 페이징 -->
<c:if test="${totalCount>0 }">
<div style="text-align: center">
<ul class="pagination">
	<!-- 이전 -->
	<c:if test="${startPage>1 }">
	<li>
		<a href="regionTrip?currentPage=${startPage-1}">이전</a>
	</li>
	</c:if>
	
	<c:forEach var="pp" begin="${startPage }" end="${endPage }">
	<c:if test="${currentPage==pp }">
	<li class="active">
	<a href="regionTrip?currentPage=${pp}">${pp }</a>
	</li>
	</c:if>
	<c:if test="${currentPage!=pp }">
	<li>
		<a href="regionTrip?currentPage=${pp }">${pp }</a>
	</li>
	</c:if>
	</c:forEach>
	
	<!-- 다음 -->
	<c:if test="${endPage<totalPage }">
	<li>
		<a href="regionTrip?currentPage=${endPage+1}">다음</a>
	</li>
	</c:if>
</ul>
</div>
</c:if>

</body>
</html>