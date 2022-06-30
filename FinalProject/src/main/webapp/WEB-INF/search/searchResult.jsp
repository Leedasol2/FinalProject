<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>
<script type="text/javascript">
$(function(){
	$(document).ready(function(){
		
	var searchcount=${size};
	
	if(searchcount<=2){
		$("span.sresult").css('margin-left','21px');
		$("div.search-allcontent").css('display','flex');
		$("div.search-allcontent").css('align-items','center');		
		$("div.search-allcontent").css('justify-content','center');		
	}
	});
});	
</script>
</head>
<body>

<!-- 메인 시작 -->

<div class="mainofsearch">

<span class="sresult">검색결과</span>
  
    <div class="search-allcontent">
    
     <c:if test="${size==0}">
       <div class="searchnoresult">검색결과가 없습니다</div>
     </c:if>
       
     <c:if test="${size!=0}">
       <c:forEach var="search" items="${searchlist}">

      <div class="search-content">
        <c:forTokens var="img" items="${search.image }" delims="," begin="0" end="0">
          <c:if test="${search.part=='trip'}">
           <img src="${root}/image/tripspot/${img}" class="search-img" onclick="location.href='/myTrip/myTripDetail?tnum=${search.tnum}'">
         </c:if>
         <c:if test="${search.part=='themepark'}">
           <img src="${root}/image/themepark/${img}" class="search-img" onclick="location.href='/myTrip/themeParkDetail?tnum=${search.tnum}'">
         </c:if>
         <c:if test="${search.part=='festival'}">
           <img src="${root}/image/festival/${img}" class="search-img" onclick="location.href='/myTrip/festivalDetail?tnum=${search.tnum}'">
         </c:if>
      </c:forTokens> 
       <div class="searchResult-box"> 
         <div class="search-name">
           <c:if test="${search.part=='trip'}">
            <a href="/myTrip/myTripDetail?tnum=${search.tnum}">${search.title }</a>
          </c:if>
          <c:if test="${search.part=='themepark'}">
           <a href="/myTrip/themeParkDetail?tnum=${search.tnum}">${search.title }</a>
          </c:if>
         <c:if test="${search.part=='festival'}">
           <a href="/myTrip/festivalDetail?tnum=${search.tnum}">${search.title }</a>
         </c:if>
        </div>
           
      <div class="best-star-rating">
		<div class="tripstory-star-ratings">
		  <div class="tripstory-star-ratings-fill space-x-2 text-lg"
				style="width: ${search.avgrstar*20+1.5}%">
			<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
		  </div>
		  <div class="tripstory-star-ratings-base space-x-2 text-lg">
			<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
		  </div>
		</div>
	  </div>
            
      </div>
      
      <div class="listbtm">
        <img src="${root}/image/asset/여행지 위치아이콘.png"> 
	    <span class="search-region">${search.location }</span>
	  </div>
      
      </div>
     
    </c:forEach>
    </c:if>
  </div>
</div>
<!-- 메인 끝 -->

</body>
</html>