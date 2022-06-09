<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>

<!-- root -->
<c:set var="root" value="<%=request.getContextPath() %>"/>

<!-- CSS -->
<link rel="stylesheet" href="${root }/css/main.css"/>
<link rel="stylesheet" href="${root }/css/festivaldetail.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css"> /* css파일에 적용했더니 안되고, 여기서 작성하면 적용되는 css들..ㅠㅠ */
@font-face {
    font-family: 'MinSans-Medium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/MinSans-Medium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
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


</head>
<body>

<script type="text/javascript">
$(function(){
	

	<!-- image 클릭 이벤트 -->
	$(".small").click(function(){
		
		var src=$(this).attr("src");
		
		$(".image").attr("src",src);
	});
	
	<!-- select 클릭시 스크롤 이동 이벤트-->
// 		$("span.sp1").click(function(){		
// 			var offset = $(".sogae").offset(); //선택한 태그의 위치를 반환                
// 			//animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함 	        
// 			$(".sogae").animate({scrollTop : offset.top}, 400);
// 		});
// 		$("span.sp2").click(function(){		
// 			var offset = $(".map").offset(); //선택한 태그의 위치를 반환                
// 			//animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함 	        
// 			$(".map").animate({scrollTop : offset.top}, 400);
// 		});
// 		$("span.sp3").click(function(){		
// 			var offset = $(".image").offset(); //선택한 태그의 위치를 반환                
// 			//animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함 	        
// 			$(".image").animate({scrollTop : offset.top}, 400);
// 		});
// 		$("span.sp4").click(function(){		
// 			var offset = $(".madi").offset(); //선택한 태그의 위치를 반환                
// 			//animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함 	        
// 			$(".madi").animate({scrollTop : offset.top}, 400);
// 		});
});
</script>
	
<div class="home">

	<!-- header 시작 -->
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
	</div> <!-- header 끝 -->

	<!-- main 시작 -->
	<div class="main">
		<div class="subject">
		축제 <img alt="" src="${root }/photo/대관람차.png" width="50px;">
		</div>
	<hr width="970px"><br><br>
	<div class="subcontent">
	<img alt="" src="${root }/photo/페스티벌.jpg" class="img1"> 
	<div style="font-family: 'MinSans-Black'; font-size: 1.7em;">
	<b>서울 파크 뮤직 페스티벌</b>
	</div>
	<br><br><br>
	<span>도심에서 펼쳐지는 국내 최대 뮤직 페스티벌!</span>
	<br><br><br><br><br>
	<img alt="" src="${root }/photo/위치아이콘.png" width="25px;"><span> 서울특별시 올림픽공원 88잔디마당</span>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img alt="" src="${root }/photo/링크.png" width="20px;"><span> 홈페이지</span>
	</div>
	<br><br><br><br><br><br>
	<hr width="970px">
	<div align="center" class="select">
	<a href="#sp1"><span>소개글</span></a>
	<a href="#sp2"><span>지도</span></a>
	<a href="#sp3"><span>사진</span></a>
	<a href="#sp4"><span>기간</span></a>
	</div>
	<hr width="970px"><br>
	
	<div class="sogae" id="sp1">
	<b>소개글</b>
	</div>
	<br><br><br>
	<div align="center">
	<img alt="" src="${root }/photo/따옴표위.png" width="70px;">
	<br><br><br><br>
	<span>서울 파크 뮤직 페스티벌은 25,26일 양일간 서울 올림픽공원 88잔디마당에서 진행된다.
	<br>대중적 인지도 높은 국내 최정상의 아티스트와 함께 진행되며,<br>
	다양한 컨셉의 이벤트,콘텐츠 존 구성으로 19세 이상 누구나 즐길 수 있는 페스티벌이다. <br></span>
	<br><br><br>
	<img alt="" src="${root }/photo/따옴표아래.png" width="70px;">
	</div>
	<br><br><br>
	<hr width="970px"><br>
	
	<div class="map" id="sp2">
	<b>지도</b>
	</div>
	<br><br>
	<img alt="" src="${root }/photo/map3.png" class="map">
	<br><br><br><br>
	<hr width="970px"><br>
	
	<div class="image" id="sp3">
	<b>사진</b>
	</div>
	<br><br>
	<img alt="" src="${root }/photo/페스티벌.jpg" class="image"><br><br>
	<div class="smimage">
	<img alt="" src="${root }/photo/축제1.jpg" class="small">
	<img alt="" src="${root }/photo/축제2.jpg" class="small">
	<img alt="" src="${root }/photo/축제3.jpg" class="small">
	<img alt="" src="${root }/photo/축제4.jpg" class="small">
	<img alt="" src="${root }/photo/축제5.jpg" class="small">
	</div>
	<br><br><br>
	<hr width="970px"><br>
	
	<div class="date" id="sp4">
	<b>기간</b>
	</div>
	<br><br><br><br><br><br>
	<div align="center">
	<span>22년 6월 25일 ~ 22년 6월 26일
	<br>양일간 페스티벌 진행!</span></div>
	</div><!-- main 끝 -->

	<!-- footer 시작 -->
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
	</div><!-- footer 끝 -->
	
</div>
</body>
</html>