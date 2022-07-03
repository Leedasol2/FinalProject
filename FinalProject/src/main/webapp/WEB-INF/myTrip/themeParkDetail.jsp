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
<script type="text/javascript">
$(document).ready(function(){	
	
	loginok=$('input[name=loginok]').val();
	myid=$('input[name=myid]').val();
	tnum=$('input[name=tnum]').val();
	
	rlist();
	tmrcount();
	
	 /*image 클릭 이벤트 */
	$(".small3").click(function(){
		var src=$(this).attr("src");
		$(".tripimage").attr("src",src);
	});

	
	//review insert
	$("#rbtn").click(function(){
		var rstar = $('input[name="rating"]:checked').val();
		var rcontents = $('#detailcontent').val();
		$.ajax({
			type:"post",
			dataType:"text",
			url:"/themeParkDetail/rinsert",
			data:{"tnum":tnum,
			"rstar":rstar,
			"rcontents":rcontents},
			success:function(data)
			{
				$('#detailcontent').val("");
				$('input[name="rating"]').prop("checked",false);
				window.location.reload();
			}
		});
	});
	
	//review delete
	$(document).on("click","button.rdel",function(){
		var rnum=$(this).attr("rnum");
		var a=confirm("해당 리뷰를 삭제할까요?");
		
		if(a){
			$.ajax({
				type:"get",
				dataType:"text",
				url:"/themeParkDetail/rdelete",
				data:{"rnum":rnum},
				success:function(data){
					$('#myModal3 [data-dismiss]').click();	
					window.location.reload();
				}
			});	
		}
	});
	
	//review get
	$(document).on("click","button.rmod",function(){
		var rnum=$(this).attr("rnum");
		
		$.ajax({
			type:"get",
			dataType:"json",
			url:"/themeParkDetail/rdata",
			data:{"rnum":rnum},
			success:function(data){
				$("#ucontent").val(data.rcontents);
			}
		});
		$("#myModal3").modal();
	});
	
	//review update
	$(document).on("click","#btnaupdate",function(){
		var rnum=$("button.rmod").attr("rnum");
		var rcontents=$("#ucontent").val();
		
		$.ajax({
			type:"post",
			dataType:"text",
			url:"/themeParkDetail/rupdate",
			data:{"rnum":rnum,"rcontents":rcontents},
			success:function(data){
				window.location.reload();
			}
		});
	});
});

//review list
function rlist()
{
	$.ajax({
		type:"get",
		dataType:"json",
		url:"/themeParkDetail/rlist",
		data:{"tnum":tnum},
		success:function(data){
			var r="";
			$.each(data,function(i,drdto){
				r+="<div class='review-contents'>";
				r+="<div class='review-topbox'>";
				r+="<div class='review-title' style='display: flex;align-items: center;'>";
				r+="<a>"+maskingCar(drdto.userid);
				r+="</a>";
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
				
				if (loginok=="yes" && myid==drdto.userid) 
				{
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

//review Duplicate check
function tmrcount()
{
	$.ajax({
		type:"get",
		dataType:"text",
		url:"/mypage/tmrcount",
		data:{"tnum":tnum,"myid":myid},
		success:function(data){
			$(".btnadd").click(function(){
				if(data>=1){
					alert("리뷰는 한 ID 당 1개씩 작성할 수 있습니다.")
					$(this).removeAttr("data-target");
					$(this).removeAttr("data-toggle");
				}
			});
		}
	});
}

//review id masking
function maskingCar(userid) {
    if (userid == undefined || userid === '') {
        return '';
    }
    var pattern = /.{3}$/; // 정규식
    return userid.replace(pattern, "***");
}

</script>
</head>
<body>
	<!-- main 시작 -->
	<input type="hidden" id="tnum" name="tnum" value="${tdto.tnum }">
	<input type="hidden" name="loginok" value="${sessionScope.loginok}">
	<input type="hidden" name="myid" value="${sessionScope.myid}">
	<input type="hidden" name="myscrap" value="${myscrap}">
	<div class="mytripdetail">
	<div class="tripdetailsubject">
	<div class="mainmenutitle">
	<span>테마파크</span>
	<img alt="" src="${root }/image/asset/대관람차.png">
	</div>
	<hr>
	<div class="triptopcont">
	<div class="subcontent">
	<img src="${root}/image/themepark/${fn:split(tdto.image,',')[0]}"  class="tripdetailimg">
	</div>
	<div class="tripsogae">
	<div class="namestar">
	<div class="tripdetailname"><b>${tdto.title }</b></div>
	<div class="rstar">
	
		<div class="tripstory-star-ratings" style="font-size: 12pt;padding-right: 3.5px;">
			<div class="tripstory-star-ratings-fill space-x-2 text-lg"
			style="width: ${tdto.avgrstar*20+1.5}%">
				<span style="margin-right: 3.5px;">★</span>
				<span style="margin-right: 3.5px;">★</span>
				<span style="margin-right: 3.5px;">★</span>
				<span style="margin-right: 3.5px;">★</span>
				<span style="margin-right: 3.5px;">★</span>
			</div>
			<div class="tripstory-star-ratings-base space-x-2 text-lg">
				<span>★</span>
				<span>★</span>
				<span>★</span>
				<span>★</span>
				<span>★</span>
			</div>
		</div>
	
	</div>
	</div>
	<div class="tripsubcontent">
	<span class="tripsubcontent-span">${tdto.intro }</span>
	</div>
	<div class="themepark-subedit">
	<img alt="" src="${root }/image/asset/위치아이콘.png"><span class="tripwhere"> ${tdto.location }</span>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img alt="" src="${root }/image/asset/링크.png"><a href="${tdto.link }"><span class="tripscrap"> 홈페이지</span></a>
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
	<img alt="" src="${root }/image/themepark/${fn:split(tdto.image,',')[0]}" class="tripimage">
	<div class="smimage3">
	<img alt="" src="${root }/image/themepark/${fn:split(tdto.image,',')[0]}" class="small3">
	<img alt="" src="${root }/image/themepark/${fn:split(tdto.image,',')[1]}" class="small3">
	<img alt="" src="${root }/image/themepark/${fn:split(tdto.image,',')[2]}" class="small3">
	<img alt="" src="${root }/image/themepark/${fn:split(tdto.image,',')[3]}" class="small3">
	<img alt="" src="${root }/image/themepark/${fn:split(tdto.image,',')[4]}" class="small3">
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