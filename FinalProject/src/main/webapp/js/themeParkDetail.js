$(document).ready(function(){

	
	loginok=$('input[name=loginok]').val();
	myid=$('input[name=myid]').val();
	tnum=$('input[name=tnum]').val();
	
	rlist();
	tmrcount();

	
	<!-- image 클릭 이벤트 -->
	$(".small3").click(function(){
		
		var src=$(this).attr("src");
		
		$(".tripimage").attr("src",src);
	});
	
	
	//insert
	$("#rbtn").click(function(){
		var tnum=$(':hidden#tnum').val();
		var rstar = $('input[name="rating"]:checked').val();
		var rcontents = $('#detailcontent').val();
		//alert("tnum:"+tnum+"rstar:"+rstar+"rcontents:"+rcontents);
		//alert(myid);
		$.ajax({
			
			type:"post",
			dataType:"text",
			url:"/themeParkDetail/rinsert",
			data:{"tnum":tnum,
			"rstar":rstar,
			"rcontents":rcontents},
			success:function(data){
				
				$('#detailcontent').val("");
				$('input[name="rating"]').prop("checked",false);
				window.location.reload();
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
				url:"/themeParkDetail/rdelete",
				data:{"rnum":rnum},
				success:function(data){
					$('#myModal3 [data-dismiss]').click();	
					window.location.reload();
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
			url:"/themeParkDetail/rdata",
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
			url:"/themeParkDetail/rupdate",
			data:{"rnum":rnum,"rcontents":rcontents},
			success:function(data){
				window.location.reload();
			}
		});
	});
	
	$("span.tripscrap").click(function(){
		var tnum=$(':hidden#tnum').val();
		$("img.scrapImg").attr("src","../image/asset/스크랩아이콘.png");
		$.ajax({
			
			type:"post",
			dataType: "text",
			url:"/scrapInsert",
			data:{"tnum":tnum},
			success:function(data){
				
			}
		});
	});			
});	

function maskingCar(userid) {
    if (userid == undefined || userid === '') {
        return '';
    }
    var pattern = /.{3}$/; // 정규식
    return userid.replace(pattern, "***");
}

function tmrcount()
{
	
	var tnum=$(':hidden#tnum').val();
	var myid="${sessionScope.myid}";
	
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


function rlist()
{
	var tnum=$(':hidden#tnum').val();
	
	$.ajax({
		type:"get",
		dataType:"json",
		url:"/themeParkDetail/rlist",
		data:{"tnum":tnum},
		success:function(data){
			 //console.log(data);
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
