$(function(){
	$(document).ready(function() {
	var currentPosition = parseInt($(".trip-category").css("top"));
	$(window).scroll(function() {
		var position = $(window).scrollTop();
		$(".trip-category").stop().animate({
			"top" : position + currentPosition + "px"
		}, 1000);
		});
	});
});