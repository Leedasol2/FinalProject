$(document).ready(function() {
	$("div.shareTrip").on("click",function() {
		location.href='/board/shareTripHome';
		
		//페이지이동 + 클래스(css) 변경은 나중에. 
		//$('img#bestImg').removeClass("bestboardActive");
		//$('img#bestImg').addClass("bestboardNoActive");
		
	});
 
	$("span#best").on("click",function() {
		location.href='/board/bestBoard';
		
	});
	$("span#bul").on("click",function() {
		location.href='/board/bulletinBoard';
		
	});
	/* $("div.shareTrip").on('click',function() {
		//alert("test");
		$('img#bestImg').css('visibility','hidden');
		
		$('img#bulImg').css('visibility','hidden');
		
		$('div.boardActive').css('visibility','hidden');
		
		
	}) */
});