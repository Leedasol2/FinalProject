$(document).ready(function(){	
	
	<!-- image 클릭 이벤트 -->
	$(".small2").click(function(){
		
		var src=$(this).attr("src");
		
		$(".tripimage").attr("src",src);
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
	