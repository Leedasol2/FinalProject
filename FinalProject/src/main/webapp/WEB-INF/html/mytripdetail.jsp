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
<link rel="stylesheet" href="${root }/css/mytripdetail.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
		<br>
		여행을 떠나요 <img alt="" src="${root }/photo/자동차아이콘.png" width="50px;">
		</div>
	<hr width="970px"><br><br>
	<div class="subcontent">
	<img alt="" src="${root }/photo/n서울타워.jpg" class="img1"> 
	<div style="font-family: 'MinSans-Black'; font-size: 1.7em;">
	<b>N서울타워</b>
	</div>
	<br><br><br>
	<span>서울특별시 남산에 있는 송신탑이자 서울을 대표하는 랜드마크이다</span>
	<br><br><br><br><br>
	<img alt="" src="${root }/photo/위치아이콘.png" width="25px;"><span> 서울특별시 용산구 남산공원길 126</span>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img alt="" src="${root }/photo/스크랩안함.png" width="20px;"><span> 스크랩 하기</span>
	</div>
	<br><br><br><br><br><br>
	<hr width="970px">
	<div align="center" class="select">
	<a href="#sp1"><span>소개글</span></a>
	<a href="#sp2"><span>지도</span></a>
	<a href="#sp3"><span>사진</span></a>
	<a href="#sp4"><span>여행자의 한마디</span></a>
	</div>
	<hr width="970px"><br>
	
	<div class="sogae" id="sp1">
	<b>소개글</b>
	</div>
	<br><br><br>
	<div align="center">
	<img alt="" src="${root }/photo/따옴표위.png" width="70px;">
	<br><br><br><br>
	<span>최신 LED 기술의 조명으로 시시각각 색과 패턴이 변하는
	<br>'빛의 예술'과의 어우러짐 속에서 다양한 미디어 아트와 함께<br>
	색다른 문화예술을 경험하실 수 있습니다.
	서울의 대표적인 복합문화 공간으로 새롭게 태어난 N서울타워,
	<br>자랑스런 서울의 랜드마크가 될 것입니다.</span>
	<br><br><br>
	<img alt="" src="${root }/photo/따옴표아래.png" width="70px;">
	</div>
	<br><br><br>
	<hr width="970px"><br>
	
	<div class="map" id="sp2">
	<b>지도</b>
	</div>
	<br><br>
	 
	 <!-- KakaoMap -->
	<div id="map" class="kakaomap"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8148de36e2b8d4215e24f39fffbd1a62"></script> 
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.551399, 126.988259), <!--위도 / 경도 -->
			level: 4
		};
		var map = new kakao.maps.Map(container, options);
	</script>
	
	<br><br><br><br>
	<hr width="970px"><br>
	
	<div class="image" id="sp3">
	<b>사진</b>
	</div>
	<br><br>
	<img alt="" src="${root }/photo/n서울타워.jpg" class="image"><br><br>
	<div class="smimage">
	<img alt="" src="${root }/photo/n서울타워.jpg" class="small">
	<img alt="" src="${root }/photo/n서울타워2.jpg" class="small">
	<img alt="" src="${root }/photo/n서울타워3.jpg" class="small">
	</div>
	<br><br>
	<hr width="970px"><br>
	
	<div class="madi" id="sp4">
	<b>여행자의 한마디</b><button class="btnadd" data-target="#myModal2" data-toggle="modal">등록하기</button>
	</div>
	<br><br><br>
	<div>
	<span class="name"><b>gang***</b></span><div class="star-ratings star" >
	<div 
    class="star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
		<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	</div>
	<div class="star-ratings-base space-x-2 text-lg">
		<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	</div>
</div>
	<span class="del">삭제 |</span><span class="update">수정</span>
	<span class="date">2022-06-07 15:53</span><br><br>
	<span class="name">연인들의 천국, 외국인이면 더욱 서울의 야경을 멋지게 즐길 수 있습니다.20년만의 서울타워 방문이 아깝지 않았습니다.</span>
	</div>
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

<!-- 리뷰 작성 모달창 -->
	<div class="modal fade myModal2" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <span style="color: white;"><b>2run trip&nbsp;&nbsp;</b></span><span><b>  리뷰 작성</b></span>
        </div>
        <div class="modal-body">
        <span style="float: left;"><b>여행지 명&nbsp;&nbsp;&nbsp;&nbsp;</b></span>
        <div class="star-rating space-x-4 mx-auto">
	<input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
	<label for="5-stars" class="star pr-4">★</label>
	<input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
	<label for="4-stars" class="star">★</label>
	<input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
	<label for="3-stars" class="star">★</label>
	<input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
	<label for="2-stars" class="star">★</label>
	<input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
	<label for="1-star" class="star">★</label>
		</div>     
        <br>
        <textarea id="ucontent" class="form-control" placeholder="별점과 리뷰를 작성해주세요!"></textarea>
        </div>
        <div class="modal-footer">
          <button type="button" class="rbtn" data-dismiss="modal"
          id="=modaladd">작성</button> 
        </div>
      </div>
    </div>
  </div>
  
</body>
</html>