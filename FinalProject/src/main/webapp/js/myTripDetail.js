$(document).ready(function(){

	loginok=$('input[name=loginok]').val();
	myid=$('input[name=myid]').val();
	tnum=$('input[name=tnum]').val();
	myscrap=$('input[name=myscrap]').val();
	
	//스크랩
	
	$("span.tripscrap").click(function() {
		
		//로그인 했는지 검사
		if(loginok=="null"){
			
			alert("로그인이 필요한 서비스입니다")
			return
			
		}else{
			//alert("test"); 
	 		
			/* 로그인중인 사용자가 추천을 했는지 안했는지 */
	   		if(myscrap==1){
				var a=confirm("스크랩을 취소하시겠습니까?");
			}else{
				var b=confirm("스크랩 하시겠습니까?");
			} 
			
	 		if(a){
	 			scrapDelete()
			}
			if(b){
				scrapInsert()
				
			}    
		}
		
	})
	
});


