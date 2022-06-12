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

<!-- main 시작 -->
	<div class="main">
		<div class="subject">
		축제 <img alt="" src="${root }/image/asset/대관람차.png" width="50px;">
		</div>
	<hr width="970px"><br><br>
	<div class="subcontent">
	<img alt="" src="${root }/image/asset/페스티벌.jpg" class="img1"> 
	<div style="font-family: 'MinSans-Black'; font-size: 1.7em;">
	<b>서울 파크 뮤직 페스티벌</b>
	</div>
	<br><br><br>
	<span>도심에서 펼쳐지는 국내 최대 뮤직 페스티벌!</span>
	<br><br><br><br><br>
	<img alt="" src="${root }/image/asset/위치아이콘.png" width="25px;"><span> 서울특별시 올림픽공원 88잔디마당</span>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img alt="" src="${root }/image/asset/링크.png" width="20px;"><span> 홈페이지</span>
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
	<img alt="" src="${root }/image/asset/따옴표위.png" width="70px;">
	<br><br><br><br>
	<span>서울 파크 뮤직 페스티벌은 25,26일 양일간 서울 올림픽공원 88잔디마당에서 진행된다.
	<br>대중적 인지도 높은 국내 최정상의 아티스트와 함께 진행되며,<br>
	다양한 컨셉의 이벤트,콘텐츠 존 구성으로 19세 이상 누구나 즐길 수 있는 페스티벌이다. <br></span>
	<br><br><br>
	<img alt="" src="${root }/image/asset/따옴표아래.png" width="70px;">
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
				center: new kakao.maps.LatLng(37.520555375455, 127.11505129348), <!--위도 / 경도 -->
			level: 3
		};
		var map = new kakao.maps.Map(container, options);
	</script>
	
	<br><br><br><br>
	<hr width="970px"><br>
	
	<div class="image" id="sp3">
	<b>사진</b>
	</div>
	<br><br>
	<img alt="" src="${root }/image/asset/페스티벌.jpg" class="image"><br><br>
	<div class="smimage">
	<img alt="" src="${root }/image/asset/축제1.jpg" class="small">
	<img alt="" src="${root }/image/asset/축제2.jpg" class="small">
	<img alt="" src="${root }/image/asset/축제3.jpg" class="small">
	<img alt="" src="${root }/image/asset/축제4.jpg" class="small">
	<img alt="" src="${root }/image/asset/축제5.jpg" class="small">
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

</body>
</html>