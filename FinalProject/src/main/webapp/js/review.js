$(function(){
	
	//delete..동적
	$(document).on("click","#btnDel",function(){
		var rnum=$(this).attr("rnum");
		var currentPage=$(this).attr("currentPage");
		//alert(rnum);
		
		var a=confirm("해당 리뷰를 삭제할까요?");
		
		if(a){
			$.ajax({
				
				type:"get",
				dataType:"text", //return값 없으니까 text
				url:"delete",
				data:{"rnum":rnum, "currentPage":currentPage},
				success:function(data){
					window.location='/mypage/myPageReview?currentPage='+currentPage;
				}
			});	
		}
	});
	
});