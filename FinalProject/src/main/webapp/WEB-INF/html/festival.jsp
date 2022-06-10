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
<link rel="stylesheet" href="${root }/css/festival.css? after"/>
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
</head>
<body>
 
<script type="text/javascript">

$(document).ready(function(){
	  var currentPosition = parseInt($(".festival-category").css("top"));
	  $(window).scroll(function() {
	    var position = $(window).scrollTop(); 
	    $(".festival-category").stop().animate({"top":position+currentPosition+"px"},1000);
	  });
	});

</script> 
 
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
<div class="festival-main">

<div class="festival-category">
  <a href="#1" class="themepark-category themecategory">테마파크</a><br><br><br>
  <a href="#2" class="festivals-category themecategory">축제</a><br><br><br>
</div>

<div class="category-title">
  <span class="main-title">축제</span>
  <span class="sub-title">액티비티</span>
  <hr class="title-line">
</div>

<div class="festival-proceeding">
  <span class="proceeding-title">지금 진행중인 축제</span>
  <img class="title-img" alt="" src="${root }/image/asset/축제아이콘.png">
  <a href="#" class="festival-calendar">달력으로 보기></a>
</div>

<div>
  <table class="festival-content">
    <tr>
    
      <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
      <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
      
     <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
    </tr>
    
    <tr>
    
     <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
      
       <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
      <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
    </tr>
    
    <tr>
    
    <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
       <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
 		  </span>
        </div>
      </td>
      
     <td>
        <div class="festival-content">
          <img src="${root}/image/asset/festival.png" class="festival-img">
          <span class="festival-name">네이처파크 플라워페스티벌</span>
      
 		  <span class="festival-region">
 		    <img src="${root}/image/asset/여행지 위치아이콘.png">
 		    대구광역시 달성군
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