<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- root -->
<c:set var="root" value="<%=request.getContextPath() %>"/>

<!-- CSS -->
<link rel="stylesheet" href="${root }/css/main.css"/>
<link rel="stylesheet" href="${root }/css/themaTrip.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css"> /* css파일에 적용했더니 안되고, 여기서 작성하면 적용되는 css들..ㅠㅠ */
input.search
{
	background-image: url("${root }/image/asset/검색아이콘.png");
	background-repeat: no-repeat;
	background-position: 25px center;
}

a { text-decoration:none !important;color: #495056; }
a:hover { text-decoration:none !important;color: #495056; }

</style>

<!-- js -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

$(function(){
	
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
});

</script>
</head>
<body>

<!-- 헤더 시작 -->
<div class="header">
	  <div class="headercontent">
		<a href="${root }/"><img class="logoimg" src="${root }/image/asset/로고.png"></a>
		<input type="text" name="search" class="search" placeholder="이런 여행 없을까? 검색해보세요">
		<button type="button" class="login">로그인</button>
		<button type="button" class="join">회원가입</button>
		<img class="mainline" src="${root }/image/asset/메인-라인.png">
		
		<div id="container">
		<ul class="myMenu">
		    <li class="menu1">
		        <a href="#"><img alt="" src="${root }/image/asset/여행을떠나요아이콘.png">
		        &nbsp;&nbsp;여행을 떠나요
		        <img class="submenuicon1" src="${root }/image/asset/서브메뉴아이콘.png"></a>
		        <ul class="menu1_s submenu">
		            <li>베스트 여행지</li>
		            <li>지역별 여행지</li>
		            <li>테마별 여행지</li>
		        </ul>   
		    </li>
		    <li class="menu2">
		    	<a href="#"><img alt="" src="${root }/image/asset/액티비티아이콘.png">
		        &nbsp;&nbsp;액티비티
		        <img class="submenuicon2" src="${root }/image/asset/서브메뉴아이콘.png"></a>
		        <ul class="menu2_s submenu">
		            <li>테마파크</li>
		            <li>축제</li>
		        </ul>   
		    </li>
		    <li class="menu3"><a href="#"><img alt="" src="${root }/image/asset/여행공유아이콘.png">&nbsp;&nbsp;여행 공유</a></li>
		    <li class="menu4"><a href="#"><img alt="" src="${root }/image/asset/나만의코스짜기아이콘.png">&nbsp;&nbsp;나만의 코스짜기</a></li>   
		</ul>
		
		<button type="button" class="findtrip">나에게 딱 맞는 여행지는?</button>
		</div>
	  </div>
	</div>
<!-- 헤더 끝 -->

<!-- 본문 시작 -->
<div class="bestTrip-main">

<div class="trip-category">
  <a href="#1" class="best-category tripcategory">베스트 여행지</a><br><br><br>
  <a href="#2" class="region-category tripcategory">지역별 여행지</a><br><br><br>
  <a href="#3" class="themea-category tripcategory">테마별 여행지</a>
</div>

<div class="category-title">
  <span class="main-title">테마별 여행지</span>
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

<div class="selectbar">
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
          <span class="star-review">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
          </span><br>
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
          <span class="star-review">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
          </span><br>
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
          <span class="star-review">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
          </span><br>
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
          <span class="star-review">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
          </span><br>
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
          <span class="star-review">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
          </span><br>
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
          <span class="star-review">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
          </span><br>
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
          <span class="star-review">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
          </span><br>
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
          <span class="star-review">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
          </span><br>
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
          <span class="star-review">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
            <img src="${root}/image/asset/star.png">
          </span><br>
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

<!-- 푸터 시작 -->
<div class="footer">
		<img class="logowhite" src="${root }/image/asset/로고white.png">
		<img class="footerdeco" src="${root }/image/asset/개발도구.png">
		<pre class="pre1">(주) 2RUN TRIP
서울특별시 강남구 이런트립타워 2층		고객센터 : 2222-2222
사업자등록번호: 222-22-22222		이메일 : 2RUN@gmail.com
ⓒ 2022 2Run Trip Company. All Rights Reserved.</pre>
		<pre class="pre2">이다솔
김은비
김태민
이용기
차동현
이강진</pre>
	</div>
<!-- 푸터 끝 -->

</body>
</html>