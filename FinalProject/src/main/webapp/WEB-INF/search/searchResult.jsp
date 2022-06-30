<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>
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
       <div class="search-box"> 
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
           
          <div class="trip-star-rating">
          <div class="trip-reviewstar">
            <c:if test="${search.avgrstar==0 }">
             <div class="searchtripDetail0-reviewstar">
               <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
               </div>
             </c:if>
             <c:if test="${search.avgrstar==1 }">
               <div class="searchtripDetail1-reviewstar">
                  <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
               </div>
             </c:if>
             <c:if test="${search.avgrstar==2 }">
             <div class="searchtripDetail2-reviewstar">
              <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
             </div>
           </c:if>
           <c:if test="${search.avgrstar==3 }">
             <div class="searchtripDetail3-reviewstar">
              <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
             </div>
           </c:if>
           <c:if test="${search.avgrstar==4 }">
             <div class="searchtripDetail4-reviewstar">
              <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
            </div>
           </c:if>
           <c:if test="${search.avgrstar==5 }">
             <div class="searchtripDetail5-reviewstar">
              <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
             </div>
           </c:if>
         </div>
         </div>
            
      </div>
      <div class="explain-box">
        <div class="search-region">${search.location }</div>
      </div>  
      </div>
     
    </c:forEach>
    </c:if>
  </div>
</div>
<!-- 메인 끝 -->

</body>
</html>