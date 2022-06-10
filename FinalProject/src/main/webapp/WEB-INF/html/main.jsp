<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>

<!-- root -->
<c:set var="root" value="<%=request.getContextPath() %>"/>

<!-- CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="${root}/css/reset.css"/>
<link rel="stylesheet" href="${root}/css/main.css"/>
<!-- js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="${root}/js/main.js"></script>
</head>
<body>
<div class="home">

	<!-- header 시작 -->
	<div class="header">
			<div class="top-box">
				<div class="inner">
					<div class="search-box">
						<div class="logo">
							<a href="">
								<img alt="2runtrip" src="${root}/image/asset/로고.png">				
							</a>
						</div>
						<div class="search">
							<input type="text" placeholder="이런 여행 없을까? 검색해보세요.">	
						</div>
					</div>
					<div class="member-box">
						<button class="login">로그인</button>
						<button class="join">회원가입</button>
					</div>
				</div>
			</div>
			<div class="bottom-box">
				<div class="inner">
					<ul class="gnb">
						<li>
							<a href="#">여행을 떠나요</a>
							<ul>
								<li>베스트 여행지</li>
								<li>지역별 여행지</li>
								<li>테마별 여행지</li>
							</ul>
						</li>
						<li>
							<a href="#">액티비티</a>
							<ul>
								<li>테마파크</li>
								<li>축제</li>
							</ul>
						</li>
						<li>
							<a href="#">여행 공유</a>
						</li>
						<li>
							<a href="#">나만의 코스짜기</a>
						</li>
					</ul>
					<div class="perfect-trip">
						<button class="perfect-trip-btn">나에게 딱 맞는 여행지는?</button>
					</div>
				</div>
			</div>
			
			
		</div> <!-- header 끝 -->

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

	<!-- footer 시작 -->
	<div class="footer">
		<div class="inner">
			<div class="top-info">
				<div class="logo">
					<a href=""><img alt="로고white" src="${root}/image/asset/로고white.png"></a>
				</div>
				<div class="name">
					<ul class="namelist">
						<li>이다솔</li>
						<li>김은비</li>
						<li>김태민</li>
						<li>이용기</li>
						<li>차동현</li>
						<li>이강진</li>
					</ul>
				</div>
			</div>

			<div class="bottom-info">
				<div class="company-info">
					<ul class="infolist">
						<li>(주) 2RUN TRIP</li>
						<li> 서울특별시 강남구 이런트립타워 2층 고객센터 : 2222-2222</li>
						<li>사업자등록번호: 222-22-22222 이메일 : 2RUN@gmail.com</li>
						<li>ⓒ 2022 2Run Trip Company. All Rights Reserved.</li>
					</ul>
				</div>
				<div class="tools">
					<img alt="tools" src="${root}/image/asset/개발도구.png">
				</div>
			</div>

		</div>
	</div>
	<!-- footer끝 -->

</div><!-- home끝 -->
</body>
</html>