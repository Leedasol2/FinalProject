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
		
		$(".tripimage").attr("src",src);
	});
	
});
</script>

	<!-- main 시작 -->
	<div class="mytripdetail">
	<div class="tripdetailsubject">테마파크 <img alt="" src="${root }/image/asset/대관람차.png">
	
	<hr>
	<div class="subcontent">
	<img alt="" src="${root }/image/asset/롯데월드.jpg" class="tripdetailimg">
	</div>
	<div class="tripsogae">
	<div class="tripdetailname"><b>롯데월드</b></div>
	<div class="tripsubcontent">
	날씨와 상관없이 1년 365일 놀이기구를 즐길 수 있는 테마파크!
	</div>
	<div class="subedit">
	<img alt="" src="${root }/image/asset/위치아이콘.png"><span class="tripwhere"> 서울특별시 송파구 올림픽로 240</span>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img alt="" src="${root }/image/asset/링크.png"><span class="tripscrap"> 홈페이지</span>
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
	<span>서울 롯데월드는 신나는 여가와 엔터테인먼트를 꿈구는 사람들과
	<br>갈수록 늘어나는 외국인 관광 활성화를 위해 운영하는 테마파크입니다.<br>
	롯데월드는 모험과 신비를 테마로 하는 실내 공원인 어드벤처, 석촌호수, 매직 아일랜드, <br>
	민속박물관, 쇼핑몰, 호텔, 백화점, 아이스링크등으로 구성되어 있습니다.
	<br>관광, 문화, 레저, 쇼핑을 원스톱으로 즐길 수 있는 대규모 복합 공간입니다.</span>
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
// 			center: new kakao.maps.LatLng(37.520555375455, 127.11505129348), 
			center: new kakao.maps.LatLng(34.7413386560623,127.753455294406), <!--위도 / 경도 -->
			level: 4
		};
		var map = new kakao.maps.Map(container, options);
	</script>
	
	<hr>
	
	<div class="image" id="sp3">
	<b>사진</b>
	</div>
	<img alt="" src="${root }/image/asset/롯데월드.jpg" class="tripimage">
	<div class="smimage3">
	<img alt="" src="${root }/image/asset/테마파크.jpg" class="small3">
	<img alt="" src="${root }/image/asset/테마파크2.jpg" class="small3">
	<img alt="" src="${root }/image/asset/테마파크3.jpg" class="small3">
	<img alt="" src="${root }/image/asset/테마파크4.jpg" class="small3">
	<img alt="" src="${root }/image/asset/테마파크5.jpg" class="small3">
	</div>
	<hr>
	
	<div class="madi" id="sp4">
	<b>여행자의 한마디</b><button class="btnadd" data-target="#myModal2" data-toggle="modal">등록하기</button>
	</div>
	<div class="madicontent">
	<span class="detailname">sa*****</span>
	<span class="detailedit">삭제 | 수정  2022-06-07 15:53</span>
	<div class="detail-star-rating">
                      <input type="radio" id="5-stars" name="rating" value="5" />
                      <label for="5-stars" class="star">&#9733;</label>
                      <input type="radio" id="4-stars" name="rating" value="4" />
                      <label for="4-stars" class="star">&#9733;</label>
                      <input type="radio" id="3-stars" name="rating" value="3" />
                      <label for="3-stars" class="star">&#9733;</label>
                      <input type="radio" id="2-stars" name="rating" value="2" />
                      <label for="2-stars" class="star">&#9733;</label>
                      <input type="radio" id="1-star" name="rating" value="1" />
                      <label for="1-star" class="star">&#9733;</label>
    </div>
	
	<div class="madireview">롯데월드에서만 만날 수 있는 몽환적인 분위기와 느낌! 너무 좋았습니다!</div>
	</div>
	</div>
	<!-- main 끝 -->
  
  	<!-- 리뷰 작성 모달창 -->
	<div class="modal fade myModal2" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="detailmodal">
        <div class="modal-header detailheader">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <span class="modalsub">2run trip&nbsp;&nbsp;</span><span class="modalsub2">리뷰 작성</span>
        </div>
        <div class="modal-body">
        <span class="modalname">롯데월드&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <div class="modal-star-rating">
                      <input type="radio" id="5-stars" name="rating" value="5" />
                      <label for="5-stars" class="star">&#9733;</label>
                      <input type="radio" id="4-stars" name="rating" value="4" />
                      <label for="4-stars" class="star">&#9733;</label>
                      <input type="radio" id="3-stars" name="rating" value="3" />
                      <label for="3-stars" class="star">&#9733;</label>
                      <input type="radio" id="2-stars" name="rating" value="2" />
                      <label for="2-stars" class="star">&#9733;</label>
                      <input type="radio" id="1-star" name="rating" value="1" />
                      <label for="1-star" class="star">&#9733;</label>
    </div> 
        <textarea id="detailcontent" class="form-control" placeholder="별점과 리뷰를 작성해주세요!"></textarea>
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