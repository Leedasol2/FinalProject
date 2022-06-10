$(document).ready(function() {
		
	let swiper = new Swiper(".newpark .mySwiper", {
		slidesPerView: 3,
		spaceBetween: 10,
		loop: true,
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev'
		}
	});
      
      let swiper2 = new Swiper(".festival .mySwiper", {
		slidesPerView: 4,
		spaceBetween: 10,
		loop: true,
		navigation: {
			nextEl: '.festival .swiper-button-next',
			prevEl: '.festival .swiper-button-prev'
		}
	});
	
	});