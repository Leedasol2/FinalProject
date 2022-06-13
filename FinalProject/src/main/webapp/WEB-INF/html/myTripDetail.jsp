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
		
		$(".tripimage").attr("src",src);
	});
	
});
</script>

	<!-- main 시작 -->
	<div class="mytripdetail">
	<div class="tripdetailsubject">여행을 떠나요 <img alt="" src="${root }/image/asset/자동차아이콘.png">
	
	<hr>
	<div class="triptopcont">
	<div class="subcontent">
	<img alt="" src="${root }/image/asset/n서울타워.jpg" class="tripdetailimg">
	</div>
	<div class="tripsogae">
	<div class="tripdetailname"><b>N서울타워</b></div>
	<div class="tripsubcontent">
	서울특별시 남산에 있는 송신탑이자 서울을 대표하는 랜드마크이다
	</div>
	<div class="subedit">
	<img alt="" src="${root }/image/asset/위치아이콘.png"><span class="tripwhere"> 서울특별시 용산구 남산공원길 126</span>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img alt="" src="${root }/image/asset/스크랩안함.png"><span class="tripscrap"> 스크랩 하기</span>
	</div>
	</div>
	</div>
	</div>
	
	<hr>
	<div align="center" class="select">
	<a href="#sp1"><span>소개글</span></a>
	<a href="#sp2"><span>지도</span></a>
	<a href="#sp3"><span>사진</span></a>
	<a href="#sp4"><span>여행자의 한마디</span></a>
	</div>
	<hr>
	
	<div class="sogae" id="sp1">
	<b>소개글</b>
	</div>
	<div class="tripimg1">
	<img alt="" src="${root }/image/asset/따옴표위.png">
	</div>
	<div class="tripcontent">
	<span>최신 LED 기술의 조명으로 시시각각 색과 패턴이 변하는
	<br>'빛의 예술'과의 어우러짐 속에서 다양한 미디어 아트와 함께<br>
	색다른 문화예술을 경험하실 수 있습니다.
	서울의 대표적인 복합문화 공간으로 새롭게 태어난 N서울타워,
	<br>자랑스런 서울의 랜드마크가 될 것입니다.</span>
	</div>
	<div class="tripimg2">
	<img alt="" src="${root }/image/asset/따옴표아래.png">
	</div>
	<hr>
	
	<div class="map" id="sp2">
	<b>지도</b>
	</div>
	 
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
	
	<hr>
	
	<div class="image" id="sp3">
	<b>사진</b>
	</div>
	<img alt="" src="${root }/image/asset/n서울타워.jpg" class="tripimage">
	<div class="smimage">
	<img alt="" src="${root }/image/asset/n서울타워.jpg" class="small">
	<img alt="" src="${root }/image/asset/n서울타워2.jpg" class="small">
	<img alt="" src="${root }/image/asset/n서울타워3.jpg" class="small">
	</div>
	<hr>
	
	<div class="madi" id="sp4">
	<b>여행자의 한마디</b><button class="btnadd" data-target="#myModal2" data-toggle="modal">등록하기</button>
	</div>
	<div class="madicontent">
	<span class="name"><b>ga*****</b></span>
	<div class="star-ratings star" >
	<div 
    class="star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
		<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	</div>
	<div class="star-ratings-base space-x-2 text-lg">
		<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
	</div>
	</div>
	<div class="contentedit">
	<span class="del">삭제 |</span><span class="update">수정</span>
	<span class="date">2022-06-07 15:53</span>
	</div>
	</div>
	<span class="madireview">연인들의 천국, 외국인이면 더욱 서울의 야경을 멋지게 즐길 수 있습니다.20년만의 서울타워 방문이 아깝지 않았습니다.</span>
	</div>
<!-- main 끝 -->
	
<!-- 리뷰 작성 모달창 -->
	<div class="modal fade myModal2" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <span class="modalsub"><b>2run trip&nbsp;&nbsp;</b></span><span><b>  리뷰 작성</b></span>
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