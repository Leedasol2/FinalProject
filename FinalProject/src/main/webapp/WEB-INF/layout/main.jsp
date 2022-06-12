<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>
</head>
<body>

	<!-- main 시작 -->
	<div class="container">
			<div class="inner">
				<div class="section slidebox">
					<input type="radio" name="slide" id="slide01" checked="checked">
					<input type="radio" name="slide" id="slide02"> <input
						type="radio" name="slide" id="slide03"> <input
						type="radio" name="slide" id="slide04">
					<ul class="slidelist">
						<li class="slideitem">
							<div>
								<label for="slide04" class="left"></label> <label for="slide02"
									class="right"></label> <a><img
									src="${root }/image/asset/banner1.png"></a>
							</div>
						</li>
						<li class="slideitem">
							<div>
								<label for="slide01" class="left"></label> <label for="slide03"
									class="right"></label> <a><img
									src="${root }/image/asset/banner2.png"></a>
							</div>
						</li>
						<li class="slideitem">
							<div>
								<label for="slide02" class="left"></label> <label for="slide04"
									class="right"></label> <a><img
									src="${root }/image/asset/banner3.png"></a>
							</div>
						</li>
						<li class="slideitem">
							<div>
								<label for="slide03" class="left"></label> <label for="slide01"
									class="right"></label> <a><img
									src="${root }/image/asset/banner4.png"></a>
							</div>
						</li>
					</ul>
				</div><!-- 배너끝 -->
				
				<!-- 여행이야기 -->
				<div class="section tripstory">
					<div class="title">여행이야기</div>
					<div class="content">
					<div class="card-box">
						<div class="tripstory-content">
							<img src="${root}/image/asset/여행지이미지(예시).jpg"
								class="tripstory-img">
							<div class="name-box">
								<div class="tripstory-name">
									<a>신평양조장</a>
								</div>
								<div class="tripstory-star-ratings">
									<div class="tripstory-star-ratings-fill space-x-2 text-lg"
										style="width: ratingToPercent+ '%'">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</div>
									<div class="tripstory-star-ratings-base space-x-2 text-lg">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</div>
								</div>
							</div>
							<div class="explain-box">
								<div class="tripstory-explanation">일상 탈출러를 위한 당진</div>
								<div class="tripstory-region">충청남도 당진시</div>
							</div>
						</div>
						<div class="tripstory-content">
							<img src="${root}/image/asset/여행지이미지(예시).jpg"
								class="tripstory-img">
							<div class="name-box">
								<div class="tripstory-name">
									<a>신평양조장</a>
								</div>
								<div class="tripstory-star-ratings">
									<div class="tripstory-star-ratings-fill space-x-2 text-lg"
										style="width: ratingToPercent+ '%'">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</div>
									<div class="tripstory-star-ratings-base space-x-2 text-lg">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</div>
								</div>
							</div>
							<div class="explain-box">
								<div class="tripstory-explanation">일상 탈출러를 위한 당진</div>
								<div class="tripstory-region">충청남도 당진시</div>
							</div>
						</div>
						<div class="tripstory-content">
							<img src="${root}/image/asset/여행지이미지(예시).jpg"
								class="tripstory-img">
							<div class="name-box">
								<div class="tripstory-name">
									<a>신평양조장</a>
								</div>
								<div class="tripstory-star-ratings">
									<div class="tripstory-star-ratings-fill space-x-2 text-lg"
										style="width: ratingToPercent+ '%'">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</div>
									<div class="tripstory-star-ratings-base space-x-2 text-lg">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</div>
								</div>
							</div>
							<div class="explain-box">
								<div class="tripstory-explanation">일상 탈출러를 위한 당진</div>
								<div class="tripstory-region">충청남도 당진시</div>
							</div>
						</div>
						<div class="tripstory-content">
							<img src="${root}/image/asset/여행지이미지(예시).jpg"
								class="tripstory-img">
							<div class="name-box">
								<div class="tripstory-name">
									<a>신평양조장</a>
								</div>
								<div class="tripstory-star-ratings">
									<div class="tripstory-star-ratings-fill space-x-2 text-lg"
										style="width: ratingToPercent+ '%'">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</div>
									<div class="tripstory-star-ratings-base space-x-2 text-lg">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</div>
								</div>
							</div>
							<div class="explain-box">
								<div class="tripstory-explanation">일상 탈출러를 위한 당진</div>
								<div class="tripstory-region">충청남도 당진시</div>
							</div>
						</div>
						</div>

						<div class="banner-box">
							<div class="img-box">
								<img src="${root}/image/asset/main-tripstorybanner.png">
							</div>
							<div class="tripstory-subject">
								<a>오늘의 여행</a>
							</div>
							<ul class="tripstory-list"><!-- 수정하기 li span span /li로 바꾸고 |는 before로 -->
								<li><a class="fontgreen">부산 | </a><a>여행 게시글 제목 여행 게시글 제목</a></li>
								<li><a class="fontgreen">대전 | </a><a>여행 게시글 제목~</a></li>
								<li><a class="fontgreen">경주 | </a><a>여행 게시글 제목입니다</a></li>
								<li><a class="fontgreen">대구 | </a><a>추억의 대구 여행 게시글 제목!</a></li>
								<li><a class="fontgreen">당진 | </a><a>오늘의 추천 여행 이야기,충청남도 당진 이야기</a></li>
								<li><a class="fontgreen">제주 | </a><a>여행 게시글 제목 여행 게시글 제목 여행 게시글 제목입니다</a></li>
							</ul>

						</div>
					</div>

					
				</div>
				<!-- 여행이야기끝 -->

				<!-- 테마파크 -->
				<div class="section newpark">
					<div class="title">새로 오픈한 테마파크</div>
					<div class="content">

						<div class="swiper mySwiper">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<div class="newpark-content">
										<img src="${root}/image/asset/메인-테마파크예시이미지.png"
											class="tripstory-img">
										<div class="name-box">
											<div class="tripstory-name">
												<a>제주 신화월드 테마파크</a>
											</div>
											<div class="tripstory-star-ratings">
												<div class="tripstory-star-ratings-fill space-x-2 text-lg"
													style="width: ratingToPercent+ '%'">
													<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
												</div>
												<div class="tripstory-star-ratings-base space-x-2 text-lg">
													<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
												</div>
											</div>
										</div>
										<div class="explain-box">
											<div class="tripstory-region">충청남도 당진시</div>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="newpark-content">
										<img src="${root}/image/asset/메인-테마파크예시이미지.png"
											class="tripstory-img">
										<div class="name-box">
											<div class="tripstory-name">
												<a>제주 신화월드 테마파크</a>
											</div>
											<div class="tripstory-star-ratings">
												<div class="tripstory-star-ratings-fill space-x-2 text-lg"
													style="width: ratingToPercent+ '%'">
													<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
												</div>
												<div class="tripstory-star-ratings-base space-x-2 text-lg">
													<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
												</div>
											</div>
										</div>
										<div class="explain-box">
											<div class="tripstory-region">충청남도 당진시</div>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="newpark-content">
										<img src="${root}/image/asset/메인-테마파크예시이미지.png"
											class="tripstory-img">
										<div class="name-box">
											<div class="tripstory-name">
												<a>제주 신화월드 테마파크</a>
											</div>
											<div class="tripstory-star-ratings">
												<div class="tripstory-star-ratings-fill space-x-2 text-lg"
													style="width: ratingToPercent+ '%'">
													<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
												</div>
												<div class="tripstory-star-ratings-base space-x-2 text-lg">
													<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
												</div>
											</div>
										</div>
										<div class="explain-box">
											<div class="tripstory-region">충청남도 당진시</div>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="newpark-content">
										<img src="${root}/image/asset/메인-테마파크예시이미지.png"
											class="tripstory-img">
										<div class="name-box">
											<div class="tripstory-name">
												<a>제주 신화월드 테마파크</a>
											</div>
											<div class="tripstory-star-ratings">
												<div class="tripstory-star-ratings-fill space-x-2 text-lg"
													style="width: ratingToPercent+ '%'">
													<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
												</div>
												<div class="tripstory-star-ratings-base space-x-2 text-lg">
													<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
												</div>
											</div>
										</div>
										<div class="explain-box">
											<div class="tripstory-region">충청남도 당진시</div>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="newpark-content">
										<img src="${root}/image/asset/메인-테마파크예시이미지.png"
											class="tripstory-img">
										<div class="name-box">
											<div class="tripstory-name">
												<a>제주 신화월드 테마파크</a>
											</div>
											<div class="tripstory-star-ratings">
												<div class="tripstory-star-ratings-fill space-x-2 text-lg"
													style="width: ratingToPercent+ '%'">
													<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
												</div>
												<div class="tripstory-star-ratings-base space-x-2 text-lg">
													<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
												</div>
											</div>
										</div>
										<div class="explain-box">
											<div class="tripstory-region">충청남도 당진시</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
						<div class="swiper-button-next"></div>
    						<div class="swiper-button-prev"></div>


					</div>
				</div>
				<!-- 테마파크끝 -->
				
				<!-- 코스&지도 -->
				<div class="section cosmap">
					<div class="content">
						<div class="cos-box">
							<div class="title-box">
								<div class="title">나만의 코스 짜기</div>
								<div class="title-explain">내가 직접 만드는 코스! 이런 여행 어때?</div>
							</div>
							<div class="img-box">
								<a href=""><img alt="" src="${root}/image/asset/cos.png"></a>
							</div>
						</div>
						<div class="map-box">
							<div class="title-box">
								<div class="title">지도로 찾는 여행지</div>
								<div class="title-explain">지역을 선택해 여행지를 찾아보세요</div>
							</div>
							<div class="img-box">
								<a href=""><img alt="" src="${root}/image/asset/map.png"></a>
							</div>
						</div>
					</div>
				</div>
				<!-- 코스&지도끝 -->
				
				<!-- 축제 -->
				<div class="section festival">
					<div class="title">지금 진행중인 축제</div>
					<div class="content">

						<div class="swiper mySwiper">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<div class="newpark-content">
										<img src="${root}/image/asset/축제예시.png"
											class="tripstory-img">
										<div class="name-box">
											<div class="tripstory-name">
												<a>제주 신화월드 테마파크</a>
											</div>
										</div>
										<div class="explain-box">
											<div class="tripstory-region">강원도 춘천시</div>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="newpark-content">
										<img src="${root}/image/asset/축제예시.png"
											class="tripstory-img">
										<div class="name-box">
											<div class="tripstory-name">
												<a>제주 신화월드 테마파크</a>
											</div>
										</div>
										<div class="explain-box">
											<div class="tripstory-region">강원도 춘천시</div>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="newpark-content">
										<img src="${root}/image/asset/축제예시.png"
											class="tripstory-img">
										<div class="name-box">
											<div class="tripstory-name">
												<a>제주 신화월드 테마파크</a>
											</div>
										</div>
										<div class="explain-box">
											<div class="tripstory-region">강원도 춘천시</div>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="newpark-content">
										<img src="${root}/image/asset/축제예시.png"
											class="tripstory-img">
										<div class="name-box">
											<div class="tripstory-name">
												<a>제주 신화월드 테마파크</a>
											</div>
										</div>
										<div class="explain-box">
											<div class="tripstory-region">강원도 춘천시</div>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="newpark-content">
										<img src="${root}/image/asset/축제예시.png"
											class="tripstory-img">
										<div class="name-box">
											<div class="tripstory-name">
												<a>제주 신화월드 테마파크</a>
											</div>
										</div>
										<div class="explain-box">
											<div class="tripstory-region">강원도 춘천시</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
						<div class="swiper-button-next"></div>
    						<div class="swiper-button-prev"></div>


					</div>
				</div>
				<!-- //축제 -->
			</div>
	</div>

	<!-- main 끝 -->

</body>
</html>