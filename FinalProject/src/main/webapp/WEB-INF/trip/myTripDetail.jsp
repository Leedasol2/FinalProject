<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>

</head>
<body>

<script type="text/javascript">
$(function(){

	loginok="${sessionScope.loginok}";
	myid="${sessionScope.myid}";
	
	rlist();
	
	<!-- image 클릭 이벤트 -->
	$(".small").click(function(){
		
		var src=$(this).attr("src");
		
		$(".tripimage").attr("src",src);
	});
	
	
	//insert
	$("#rbtn").click(function(){
		var tnum=$(this).attr("tnum");
		var rstar = $('input[name="rating"]:checked').val();
		var rcontents = $('#detailcontent').val();
		//alert("tnum:"+tnum+"rstar:"+rstar+"rcontents:"+rcontents);
		//alert(myid);
		$.ajax({
			
			type:"post",
			dataType:"text",
			url:"/myTripDetail/rinsert",
			data:{"tnum":tnum,
			"rstar":rstar,
			"rcontents":rcontents},
			success:function(data){
				
				rlist();
			}
		});
		
	});
	
	
	//delete
	$(document).on("click","button.rdel",function(){
		var rnum=$(this).attr("rnum");
		//alert(rnum);
		var a=confirm("해당 리뷰를 삭제할까요?");
		
		if(a){
			$.ajax({
				
				type:"get",
				dataType:"text", //return값 없으니까 text
				url:"/myTripDetail/rdelete",
				data:{"rnum":rnum},
				success:function(data){
					$('#myModal3 [data-dismiss]').click();	
					rlist();
				}
			});	
		}
	});
	
	//update
	$(document).on("click","button.rmod",function(){

		var rnum=$(this).attr("rnum");
		
		$.ajax({
			
			type:"get",
			dataType:"json",
			url:"/myTripDetail/rdata",
			data:{"rnum":rnum},
			success:function(data){
				//모달에 idx값을 가진 content띄우기
				$("#ucontent").val(data.rcontents);
			}
		});
		
		$("#myModal3").modal();
	});
	$(document).on("click","#btnaupdate",function(){
		
		var rnum=$("button.rmod").attr("rnum");
		var rcontents=$("#ucontent").val();
		
		$.ajax({
			
			type:"post",
			dataType:"text",
			url:"/myTripDetail/rupdate",
			data:{"rnum":rnum,"rcontents":rcontents},
			success:function(data){
				rlist();
			}
		});
	});
	
});

function rlist()
{
	var tnum=$(':hidden#tnum').val();
	
	$.ajax({
		type:"get",
		dataType:"json",
		url:"/myTripDetail/rlist",
		data:{"tnum":tnum},
		success:function(data){
			 //console.log(data);
			var r="";
			
			$.each(data,function(i,drdto){
				r+="<div class='review-contents'>";
				r+="<div class='review-topbox'>";
				r+="<div class='review-title' style='display: flex;align-items: center;'>";
				r+="<a>"+drdto.userid+"</a>";
				r+="<div class='tripstory-star-ratings'>";
				r+="<div class='tripstory-star-ratings-fill space-x-2 text-lg' style='width:"+drdto.rstar*20+"%'>";
				r+="<span>★</span>";
				r+="<span>★</span>";
				r+="<span>★</span>";
				r+="<span>★</span>";
				r+="<span>★</span>";
				r+="</div>";
				r+="<div class='tripstory-star-ratings-base space-x-2 text-lg'>";
				r+="<span>★</span>";
				r+="<span>★</span>";
				r+="<span>★</span>";
				r+="<span>★</span>";
				r+="<span>★</span>";
				r+="</div>";
				r+="</div>";
				r+="</div>";
				
				if (loginok=="yes" && myid==drdto.userid) {
					r+="<div class='review-edit'>";
					r+="<button type='button' class='rdel' rnum='"+drdto.rnum+"'>삭제</button>";
					r+="<button type='button' class='rmod' rnum='"+drdto.rnum+"'>수정</button>";
				}
				
				
				r+="<div class='review-day'>";
				r+="<span>"+drdto.rday+"</span>";
				r+="</div>";
				r+="</div>";
				r+="</div>";
				r+="<div class='review-ment'>";
				r+="<span>"+drdto.rcontents+"</span>";
				r+="</div>";
				r+="</div>";
				r+="</div>";
				r+="<div class='hr'>";
				r+="<hr>";
				r+="</div>";
			});
			
			$("div.detailreview").html(r);
		}
	});
}
</script>

	<!-- main 시작 -->
	<input type="hidden" id="tnum" value="${tdto.tnum }">
	<div class="mytripdetail">
	<div class="tripdetailsubject">여행을 떠나요 <img alt="" src="${root }/image/asset/자동차아이콘.png">
	
	<hr>
	<div class="triptopcont">
	<div class="subcontent">
	<img src="${root}/image/tripspot/${fn:split(tdto.image,',')[0]}"  class="tripdetailimg">
	</div>
	<div class="tripsogae">
	<div class="tripdetailname"><b>${tdto.title }</b></div><div class="rstar">${rdto.rstar }</div>
	<div class="tripsubcontent">
	${tdto.title }
	</div>
	<div class="subedit">
	<img alt="" src="${root }/image/asset/위치아이콘.png"><span class="tripwhere"> ${tdto.location }</span>
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
	${tdto.contents }
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
			center: new kakao.maps.LatLng(${tdto.latitude}, ${tdto.longitude}), <!--위도 / 경도 -->
			level: 4
		};
		var map = new kakao.maps.Map(container, options);
	</script>
	
	<hr>
	
	<div class="image" id="sp3">
	<b>사진</b>
	</div>
	<img src="${root}/image/tripspot/${fn:split(tdto.image,',')[0]}"  class="tripimage">
	<div class="smimage">
	<img src="${root}/image/tripspot/${fn:split(tdto.image,',')[0]}"  class="small">
	<img src="${root}/image/tripspot/${fn:split(tdto.image,',')[1]}"  class="small">
	<img src="${root}/image/tripspot/${fn:split(tdto.image,',')[2]}"  class="small">
	</div>
	<hr>
	
	<div class="madi" id="sp4">
	<b>여행자의 한마디</b>
	<c:if test="${sessionScope.loginok!=null}"> <!-- 로그인중일때만 리뷰 작성하기 -->
	<button class="btnadd" data-target="#myModal2" data-toggle="modal">등록하기</button>
	</c:if>
	</div>
	<div class="detailreview" style="width:850px;"></div>
	<input type="hidden" id="tnum" value=${tdto.tnum}>
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
        <div class="modal-body-top">
        <span class="modalname">${tdto.title }&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <div class="modal-star-rating-review-write">
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
   		</div> 
        <textarea id="detailcontent" class="form-control" placeholder="별점과 리뷰를 작성해주세요!"></textarea>
        </div>
        <div class="modal-footer">
          <button type="button" class="rbtn" id="rbtn" tnum=${tdto.tnum} data-dismiss="modal">작성</button> 
        </div>
      </div>
    </div>
  </div>

<!-- 수정다이얼로그 -->
<!-- Modal -->
  <div class="modal fade" id="myModal3" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content" style="height: 253px;margin: 0 auto;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">리뷰 수정</h4>
        </div>
        <div class="modal-body">
        	<textarea id="ucontent" class="form-control" style="width: 366px;height: 101px;"></textarea>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal"
          id="btnaupdate">수정</button>
        </div>
      </div>
      
    </div>
  </div>
</body>
</html>