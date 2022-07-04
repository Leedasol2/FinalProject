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
