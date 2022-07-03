<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>이런여행</title>
	<!-- 날짜 차이 구하기 -->
	<fmt:parseDate value="${tdto.beginday }" var="startDate"
		pattern="yyyy-MM-dd" />
	<fmt:parseNumber value="${startDate.time / (1000*60*60*24) }"
		integerOnly="true" var="start"></fmt:parseNumber>
	<fmt:parseDate value="${tdto.endday }" var="endDate"
		pattern="yyyy-MM-dd" />
	<fmt:parseNumber value="${endDate.time / (1000*60*60*24) }"
		integerOnly="true" var="end"></fmt:parseNumber>

<script type="text/javascript">
$(document).ready(function(){	
	
	 /*image 클릭 이벤트 */
	$(".small2").click(function(){
		
		var src=$(this).attr("src");
		
		$(".tripimage").attr("src",src);
	});


});
	
</script>
</head>
<body>

	

	<!-- main 시작 -->
	<input type="hidden" id="tnum" name="tnum" value="${tdto.tnum }">
	<input type="hidden" name="myscrap" value="${myscrap}">
	<div class="mytripdetail">
		<div class="tripdetailsubject">
			<div class="mainmenutitle">
				<span>축제</span> <img alt="" src="${root }/image/asset/대관람차.png">
			</div>
			<hr>
			<div class="triptopcont"
				style="flex-direction: row; max-width: 100%;">
				<div class="subcontent fes" style="width: 30%;">
					<img src="${root}/image/festival/${fn:split(tdto.image,',')[0]}"
						class="tripdetailimg"
						style="width: auto; height: 251px; margin: 0 50px;">
				</div>
				<div class="tripsogae" style="width: 70%;">
					<div class="namestar">
						<div class="tripdetailname">
							<b>${tdto.title }</b>
						</div>
					</div>
					<div class="tripsubcontent">
						<span class="tripsubcontent-span">${tdto.intro }</span>
					</div>
					<div class="subedit fes">
						<img alt="" src="${root }/image/asset/위치아이콘.png"><span
							class="tripwhere"> ${tdto.location }</span>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img alt=""
							src="${root }/image/asset/링크.png"><a href="${tdto.link }"><span
							class="tripscrap"> 홈페이지</span></a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						
							<!-- 로그인하면 스크랩기능 활성화 -->
							<c:if test="${not empty sessionScope.loginok || not empty sessionScope.loggedIn}">
							<c:if test="${myscrap==0 }">
								<img alt="" src="${root }/image/asset/스크랩안함.png" class="scrapImg" id="scrapImg">
							</c:if>
							<c:if test="${myscrap==1 }">
								<img alt="" src="${root }/image/asset/스크랩아이콘.png" class="scrapImg" id="scrapImg">
							</c:if>
							<span class="tripscrap"> 스크랩</span>
						</c:if>
					</div>
				</div>
			</div>
		</div>

		<hr>
		<div align="center" class="select">
			<a href="#sp1"><span>소개글</span></a> <a href="#sp2"><span>지도</span></a>
			<a href="#sp3"><span>사진</span></a> <a href="#sp4"><span>기간</span></a>
		</div>
		<hr>

		<div class="sogae" id="sp1">
			<b>소개글</b>
		</div>
		<div class="tripimg1">
			<img alt="" src="${root }/image/asset/따옴표위.png">
		</div>
		<div class="tripcontent">${tdto.contents }</div>
		<div class="tripimg2">
			<img alt="" src="${root }/image/asset/따옴표아래.png">
		</div>
		<hr>

		<div class="map" id="sp2">
			<b>지도</b>
		</div>

		<!-- KakaoMap -->
		<div id="map" class="kakaomap"></div>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8148de36e2b8d4215e24f39fffbd1a62"></script>
		<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(${tdto.latitude}, ${tdto.longitude}), <!--위도 / 경도 -->
			level: 4
		};
		var map = new kakao.maps.Map(container, options);
	</script>

		<hr>

		<div class="image" id="sp3">
			<b>사진</b>
		</div>
		<img alt=""
			src="${root }/image/festival/${fn:split(tdto.image,',')[0]}"
			class="tripimage">
		<div class="smimage2">
			<img alt=""
				src="${root }/image/festival/${fn:split(tdto.image,',')[0]}"
				class="small2"> <img alt=""
				src="${root }/image/festival/${fn:split(tdto.image,',')[1]}"
				class="small2"> <img alt=""
				src="${root }/image/festival/${fn:split(tdto.image,',')[2]}"
				class="small2"> <img alt=""
				src="${root }/image/festival/${fn:split(tdto.image,',')[3]}"
				class="small2"> <img alt=""
				src="${root }/image/festival/${fn:split(tdto.image,',')[4]}"
				class="small2">
		</div>
		<hr>

		<div class="date" id="sp4">
			<b>기간</b>
		</div>
		<div class="datecontent">
			<div class="fesdate">
				<div>
					<span class="begin">${tdto.beginday }</span>
				</div>
				<div>
					<span class="end">${tdto.endday }</span>
				</div>
			</div>
			<div class="dateprocess">(${end-start }일동안 페스티벌 진행)</div>
		</div>
	</div>
	<!-- main 끝 -->

</body>
</html>