$(document).ready(function() {
	var currentPosition = parseInt($(".festival-list-category").css("top"));
	$(window).scroll(function() {
		var position = $(window).scrollTop();
		$(".festival-list-category").stop().animate({ "top": position + currentPosition + "px" }, 0);
	});
});