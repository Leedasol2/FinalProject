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
    
    <c:forEach var="search" items="${searchlist}">
      <div class="search-content">
        <c:forTokens var="img" items="${search.image }" delims="," begin="0" end="0">
          <c:if test="${search.part=='trip'}">
	        <img src="${root}/image/tripspot/${img}" class="search-img" onclick="location.href='myTripDetail?tnum=${search.tnum}'">
	      </c:if>
	      <c:if test="${search.part=='themepark'}">
	        <img src="${root}/image/themepark/${img}" class="search-img" onclick="location.href='myTripDetail?tnum=${search.tnum}'">
	      </c:if>
	      <c:if test="${search.part=='festival'}">
	        <img src="${root}/image/festival/${img}" class="search-img" onclick="location.href='myTripDetail?tnum=${search.tnum}'">
	      </c:if>
		</c:forTokens> 
	    <div class="search-box"> 
	      <div class="search-name">
	        <a href="myTripDetail?tnum=${search.tnum}">${search.title }</a>
		  </div>
	         <div class="search-star-rating">
              <input type="radio" id="5-stars" name="rating" value="5" />
              <label for="5-stars" class="star">★</label>
              <input type="radio" id="4-stars" name="rating" value="4" />
              <label for="4-stars" class="star">★</label>
              <input type="radio" id="3-stars" name="rating" value="3" />
              <label for="3-stars" class="star">★</label>
              <input type="radio" id="2-stars" name="rating" value="2" />
              <label for="2-stars" class="star">★</label>
              <input type="radio" id="1-star" name="rating" value="1" />
              <label for="1-star" class="star">★</label>
            </div>
		</div>
		<div class="explain-box">
		  <div class="search-region">${search.location }</div>
		</div>  
      </div>
    </c:forEach>
    
  </div>
</div>
<!-- 메인 끝 -->

</body>
</html>