<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
 
<script type="text/javascript">
$(function(){
	
$(document).ready(function(){
	  var currentPosition = parseInt($(".trip-category").css("top"));
	  $(window).scroll(function() {
	    var position = $(window).scrollTop(); 
	    $(".trip-category").stop().animate({"top":position+currentPosition+"px"},1000);
	  });
	});
	//지역 선택시 글씨색 변경
	$("div.regionofkorea > span").click(function(){
		
		var CurrentRegion=$(this).text();
		
		$.ajax({
			
			type:"post",
			dataType: "text",
			url:"RegionChange",
			data:{"CurrentRegion":CurrentRegion},
			success:function(data){
				
			$('body').html(data);
		    colorChange();

			
			}
		});
	});
	
	//select 클릭시 이벤트
	$("select.sortselect").change(function(){
		var SelectSort=$(this).val();
		var regiontext='${regiontext}';
		
		//조건이 리뷰많은순일때
		if(SelectSort=="lotsofreviews"){
			
		$.ajax({
			
			type:"post",
			dataType: "text",
			url:"reviewCountSelect",
			data:{"SelectSort":SelectSort,"regiontext":regiontext},		
			success:function(data){
				
			$('body').html(data);
			initSort();
			colorChange();
			}
		});
		}
		
		//조건이 별점높은순일때
		if(SelectSort=="highstarscore"){
			
		$.ajax({
			
			type:"post",
			dataType: "text",
			url:"highstarSelect",
			data:{"SelectSort":SelectSort,"regiontext":regiontext},
			success:function(data){
				
			$('body').html(data);
			initSort();
			colorChange();
			}
		});
		}
		
		//조건이 별점낮은순일때
		if(SelectSort=="lowstarscore"){
			
		$.ajax({
			
			type:"post",
			dataType: "text",
			url:"lowstarSelect",
			data:{"SelectSort":SelectSort,"regiontext":regiontext},
			success:function(data){
				
			$('body').html(data);
			initSort();
			colorChange();
			}
		});
		}
		
		//조건이 추천순일때
		if(SelectSort=="topview"){
			
		$.ajax({
			
			type:"post",
			dataType: "text",
			url:"topviewSelect",
			data:{"SelectSort":SelectSort,"regiontext":regiontext},
			success:function(data){
				
			$('body').html(data);
			initSort();
			colorChange();
			}
		});
		}
		
	});
	initSort();
});

function initSort() {

	var opt='${SelectSort}';
	
	
    $("#selectopt option").removeAttr('selected');

    if (opt == "topview") {
        $("#selectopt > option[value='topview']").attr("selected","selected");
    } else if (opt == "lotsofreviews") {
        $("#selectopt > option[value='lotsofreviews']").attr("selected","selected");
    } else if (opt == "highstarscore") {
        $("#selectopt > option[value='highstarscore']").attr("selected","selected");
    } else if (opt == "lowstarscore") {
        $("#selectopt > option[value='lowstarscore']").attr("selected","selected");
    }
}

function colorChange(){
	var CurrentRegion=$(this).text();
	var regiontext='${regiontext}';
	
	 if(CurrentRegion=='서울' || regiontext=='서울'){
	       $("span.seoul").css("color","#2bae66");
	       $("span.seoul").siblings().css("color","gray");
	    }else if(CurrentRegion=='인천' || regiontext=='인천'){
	       $("span.incheon").css("color","#2bae66");
	       $("span.incheon").siblings().css("color","gray");
	    }else if(CurrentRegion=='경기' || regiontext=='경기'){
	       $("span.Gyeonggi").css("color","#2bae66");
	       $("span.Gyeonggi").siblings().css("color","gray");
	    }else if(CurrentRegion=='대전' || regiontext=='대전'){
	       $("span.daejeon").css("color","#2bae66");
	       $("span.daejeon").siblings().css("color","gray");
	    }else if(CurrentRegion=='충청' || regiontext=='충청'){
	       $("span.chungcheong").css("color","#2bae66");
	       $("span.chungcheong").siblings().css("color","gray");
	    }else if(CurrentRegion=='대구' || regiontext=='대구'){
	       $("span.daegu").css("color","#2bae66");
	       $("span.daegu").siblings().css("color","gray");
	    }else if(CurrentRegion=='전라' || regiontext=='전라'){
	       $("span.jeolla").css("color","#2bae66");
	       $("span.jeolla").siblings().css("color","gray");
	    }else if(CurrentRegion=='경상' || regiontext=='경상'){
	       $("span.gyeongsang").css("color","#2bae66");
	       $("span.gyeongsang").siblings().css("color","gray");
	    }else if(CurrentRegion=='부산' || regiontext=='부산'){
	       $("span.busan").css("color","#2bae66");
	       $("span.busan").siblings().css("color","gray");
	    }else if(CurrentRegion=='강원' || regiontext=='강원'){
	       $("span.gangwon").css("color","#2bae66");
	       $("span.gangwon").siblings().css("color","gray");
	    }else if(CurrentRegion=='제주' || regiontext=='제주'){
	       $("span.jeju").css("color","#2bae66");
	       $("span.jeju").siblings().css("color","gray");
	    } 
}
</script> 
 
<!-- 본문 시작 -->
<div class="regionTripText">

<div class="trip-category">
			<a href="bestTrip" class="best-category tripcategory">베스트 여행지</a><br>
			<br>
			<br> <a href="regionTrip" class="region-category tripcategory">지역별
				여행지</a><br>
			<br>
			<br> <a href="themaTrip" class="themea-category tripcategory">테마별
				여행지</a>
		</div>

<div class="category-title">
  <span class="main-title">지역별 여행지</span>&nbsp;
  <span class="sub-title">여행을 떠나요</span>
  <span class="title-content">가고 싶은 지역별 여행지를 골라보세요!<br>실제 여행객들의 생생한 리뷰까지 만나보세요</span>
  <hr class="title-line">
</div>

<div class="regionofkorea">
  <span class="seoul region">서울</span>
  <span class="incheon region">인천</span>
  <span class="Gyeonggi region">경기</span>
  <span class="daejeon region">대전</span>
  <span class="chungcheong region">충청</span>
  <span class="daegu region">대구</span>
  <span class="jeolla region">전라</span>
  <span class="gyeongsang region">경상</span>
  <span class="busan region">부산</span>
  <span class="gangwon region">강원</span>
  <span class="jeju region">제주</span>
</div>

<div class="sortselectbar">
  <select class="sortselect" id="selectopt">
    <option value="topview">추천순</option>
    <option value="lotsofreviews">리뷰많은순</option>
    <option value="highstarscore">별점높은순</option>
    <option value="lowstarscore">별점낮은순</option>
  </select>
</div>

<div>
  <table class="trip-content">
    
      <c:set var="i" value="0" />
   <c:set var="j" value="3" />
   <c:forEach var="region" items="${regionList }" varStatus="stauts">
   <c:if test="${i%j==0 }">
   <tr>
   </c:if>
   
      <td>
        <div class="trip-content">
          <img src="${root}/image/tripspot/${fn:split(region.image,',')[0]}" class="trip-img"
          onclick="location.href='myTripDetail?tnum=${region.tnum}&currentPage=${currentPage }'">
          <div class="listtop">
          <span class="trip-name">${region.title }</span>
          <div class="best-star-rating">

		<div class="tripstory-star-ratings">
		<div class="tripstory-star-ratings-fill space-x-2 text-lg" style="width: ${region.avgrstar*20+1.5}%">
		<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
		</div>
		<div class="tripstory-star-ratings-base space-x-2 text-lg">
		<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
		</div>
		</div>
		</div>
		</div>
            <div class="trip-explanation">${region.intro }</div>
 		  <div class="listbtm">
 		  <img src="${root}/image/asset/여행지 위치아이콘.png">
 		   <span class="trip-region">${region.location }</span>
 		   </div>
        </div>
      </td>
      
    <c:if test="${i%j==j-1 }">
    </tr>
    </c:if>
	<c:set var="i" value="${i+1 }"/>
	</c:forEach>
     
  </table>
</div>

</div>
<!-- 본문 끝 -->

</body>
</html>