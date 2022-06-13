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
	$(".small3").click(function(){
		
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
	<div class="themeparkdetail">
	<br><br>
		<div class="subject">
		테마파크 <img alt="" src="${root }/image/asset/대관람차.png" width="50px;">
		</div>
	<hr width="970px"><br><br>
	<div class="subcontent">
	<img alt="" src="${root }/image/asset/롯데월드.jpg" class="img1"> 
	<div style="font-family: 'MinSans-Black'; font-size: 1.7em;">
	<b>롯데월드</b>
	</div>
	<br><br><br>
	<span>날씨와 상관없이 1년 365일 놀이기구를 즐길 수 있는 테마파크!</span>
	<br><br><br><br><br>
	<img alt="" src="${root }/image/asset/위치아이콘.png" width="25px;"><span> 서울특별시 송파구 올림픽로 240</span>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img alt="" src="${root }/image/asset/링크.png" width="20px;"><span> 홈페이지</span>
	</div>
	<br><br><br><br><br><br><br><br><br>
	<hr width="970px">
	<div align="center" class="select">
	<a href="#sp1"><span>소개글</span></a>
	<a href="#sp2"><span>지도</span></a>
	<a href="#sp3"><span>사진</span></a>
	</div>
	<hr width="970px"><br>
	
	<div class="sogae" id="sp1">
	<b>소개글</b>
	</div>
	<br><br><br>
	<div align="center">
	<img alt="" src="${root }/image/asset/따옴표위.png" width="70px;">
	<br><br><br><br>
	<span>서울 롯데월드는 신나는 여가와 엔터테인먼트를 꿈구는 사람들과
	<br>갈수록 늘어나는 외국인 관광 활성화를 위해 운영하는 테마파크입니다.<br>
	롯데월드는 모험과 신비를 테마로 하는 실내 공원인 어드벤처, 석촌호수, 매직 아일랜드, <br>
	민속박물관, 쇼핑몰, 호텔, 백화점, 아이스링크등으로 구성되어 있습니다.
	<br>관광, 문화, 레저, 쇼핑을 원스톱으로 즐길 수 있는 대규모 복합 공간입니다.</span>
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
			center: new kakao.maps.LatLng(37.5125, 127.102778), <!--위도 / 경도 -->
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
	<img alt="" src="${root }/image/asset/롯데월드.jpg" class="image"><br><br>
	<div class="smimage3">
	<img alt="" src="${root }/image/asset/테마파크.jpg" class="small3">
	<img alt="" src="${root }/image/asset/테마파크2.jpg" class="small3">
	<img alt="" src="${root }/image/asset/테마파크3.jpg" class="small3">
	<img alt="" src="${root }/image/asset/테마파크4.jpg" class="small3">
	<img alt="" src="${root }/image/asset/테마파크5.jpg" class="small3">
	</div>
	</div><!-- main 끝 -->

</body>
</html>