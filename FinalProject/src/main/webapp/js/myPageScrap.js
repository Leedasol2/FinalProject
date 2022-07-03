$(function(){

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

function goDetail(tnum,part) {//
	//alert(tnum);
	 if(part=='trip'){
		//alert(part);
		location.href='/myTrip/myTripDetail?tnum='+tnum;
	}else if(part=='themepark'){
		//alert(part);
		location.href='/myTrip/themeParkDetail?tnum='+tnum;
	}else{
		//alert(part);
		location.href='/myTrip/festivalDetail?tnum='+tnum;
	} 
	
}