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
<link rel="stylesheet" href="${root }/css/main.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<style type="text/css"> /* css파일에 적용했더니 안되고, 여기서 작성하면 적용되는 css들..ㅠㅠ */
	input.search { background-image: url("${root }/image/asset/검색아이콘.png");background-repeat: no-repeat;background-position: 25px center;}
	a { text-decoration:none !important;color: #495056; }
	a:hover { text-decoration:none !important;color: #495056; }
	label.left {left:20px;background-image: url("${root}/image/asset/arrowleft.png");background-position: center center;background-size: 50%;background-repeat: no-repeat;}
	label.right {right:20px;background-image: url("${root}/image/asset/arrowright.png");background-position: center center;background-size: 50%;background-repeat: no-repeat;}
	div.cosimg{background-image: url("${root}/image/asset/코스.png");background-position: center center;background-size: 400px;background-repeat: no-repeat;}
	div.mapimg{background-image: url("${root}/image/asset/지찾여.png");background-position: center center;background-size: 400px;background-repeat: no-repeat;}
	div.cosimg:hover {background-image: url("${root}/image/asset/코스hover.png");}
	div.mapimg:hover {background-image: url("${root}/image/asset/지찾여hover.png");}
</style>

<!-- js -->
<script src="${root }/js/main.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
	$(document).ready(function(){
	    $('.slider').bxSlider();
	});
</script>
</head>
<body>
<div class="home">

	<!-- header 시작 -->
	<div class="header">
	  <div class="headercontent">
		<a href="${root }/"><img class="logoimg" src="${root }/image/asset/로고.png"></a>
		<input type="text" name="search" class="search" placeholder="이런 여행 없을까? 검색해보세요">
		<button type="button" class="login">로그인</button>
		<button type="button" class="join">회원가입</button>
		<img class="mainline" src="${root }/image/asset/메인-라인.png">
		
		<div id="container">
		<ul class="myMenu">
		    <li class="menu1">
		        <a href="#"><img alt="" src="${root }/image/asset/여행을떠나요아이콘.png">
		        &nbsp;&nbsp;여행을 떠나요
		        <img class="submenuicon1" src="${root }/image/asset/서브메뉴아이콘.png"></a>
		        <ul class="menu1_s submenu">
		            <li>베스트 여행지</li>
		            <li>지역별 여행지</li>
		            <li>테마별 여행지</li>
		        </ul>   
		    </li>
		    <li class="menu2">
		    	<a href="#"><img alt="" src="${root }/image/asset/액티비티아이콘.png">
		        &nbsp;&nbsp;액티비티
		        <img class="submenuicon2" src="${root }/image/asset/서브메뉴아이콘.png"></a>
		        <ul class="menu2_s submenu">
		            <li>테마파크</li>
		            <li>축제</li>
		        </ul>   
		    </li>
		    <li class="menu3"><a href="#"><img alt="" src="${root }/image/asset/여행공유아이콘.png">&nbsp;&nbsp;여행 공유</a></li>
		    <li class="menu4"><a href="#"><img alt="" src="${root }/image/asset/나만의코스짜기아이콘.png">&nbsp;&nbsp;나만의 코스짜기</a></li>   
		</ul>
		
		<button type="button" class="findtrip">나에게 딱 맞는 여행지는?</button>
		</div>
	  </div>
	</div> <!-- header 끝 -->

	<!-- main 시작 -->
	<div class="main">
	
	  <div class="slidebox">
	    <input type="radio" name="slide" id="slide01" checked="checked">
	    <input type="radio" name="slide" id="slide02">
	    <input type="radio" name="slide" id="slide03">
	    <input type="radio" name="slide" id="slide04">
	    <ul class="slidelist">
	      <li class="slideitem">
	        <div>
	          <label for="slide04" class="left"></label>
	          <label for="slide02" class="right"></label>
	          <a><img src="${root }/image/asset/banner1.png"></a>
	        </div>
	      </li>
	      <li class="slideitem">
	        <div>
	          <label for="slide01" class="left"></label>
	          <label for="slide03" class="right"></label>
	          <a><img src="${root }/image/asset/banner2.png"></a>
	        </div>
	      </li>
	      <li class="slideitem">
	        <div>
	          <label for="slide02" class="left"></label>
	          <label for="slide04" class="right"></label>
	          <a><img src="${root }/image/asset/banner3.png"></a>
	        </div>
	      </li>
	      <li class="slideitem">
	        <div>
	          <label for="slide03" class="left"></label>
	          <label for="slide01" class="right"></label>
	          <a><img src="${root }/image/asset/banner4.png"></a>
	        </div>
	      </li>
	    </ul>
	  </div>
	  
	  <div class="tripstory">
	  여행이야기 <img class="icon" src="${root }/image/asset/메인-여행이야기아이콘.png">
	    <table class="tripstory-content">
	      <tr>
	        <td>
	          <div class="tripstory-content">
	            <img src="${root}/image/asset/여행지이미지(예시).jpg" class="tripstory-img">
	            <span class="tripstory-name">신평 양조장</span>
		          <div class="tripstory-star-ratings">
				    <div class="tripstory-star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
				      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			      </div>
			      <div class="tripstory-star-ratings-base space-x-2 text-lg">
				    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			      </div>
		        </div>
		  		  <span class="tripstory-explanation">일상 탈출러를 위한 당진</span><br>
		 		  <span class="tripstory-region">
		 		    <img src="${root}/image/asset/여행지 위치아이콘.png" class="tripstory-regionicon">
		 		    충청남도 당진시
		 		  </span>
	          </div>
	        </td>
	        <td>
	          <div class="tripstory-content">
	            <img src="${root}/image/asset/여행지이미지(예시).jpg" class="tripstory-img">
	            <span class="tripstory-name">신평 양조장</span>
		          <div class="tripstory-star-ratings">
				    <div class="tripstory-star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
				      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			      </div>
			      <div class="tripstory-star-ratings-base space-x-2 text-lg">
				    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			      </div>
		        </div>
		  		  <span class="tripstory-explanation">일상 탈출러를 위한 당진</span><br>
		 		  <span class="tripstory-region">
		 		    <img src="${root}/image/asset/여행지 위치아이콘.png" class="tripstory-regionicon">
		 		    충청남도 당진시
		 		  </span>
	          </div>
	        </td>
	      </tr>
	      
	      <tr>
	        <td>
	          <div class="tripstory-content">
	            <img src="${root}/image/asset/여행지이미지(예시).jpg" class="tripstory-img">
	            <span class="tripstory-name">신평 양조장</span>
		          <div class="tripstory-star-ratings">
				    <div class="tripstory-star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
				      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			      </div>
			      <div class="tripstory-star-ratings-base space-x-2 text-lg">
				    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			      </div>
		        </div>
		  		  <span class="tripstory-explanation">일상 탈출러를 위한 당진</span><br>
		 		  <span class="tripstory-region">
		 		    <img src="${root}/image/asset/여행지 위치아이콘.png" class="tripstory-regionicon">
		 		    충청남도 당진시
		 		  </span>
	          </div>
	        </td>
	        <td>
	          <div class="tripstory-content">
	            <img src="${root}/image/asset/여행지이미지(예시).jpg" class="tripstory-img">
	            <span class="tripstory-name">신평 양조장</span>
		          <div class="tripstory-star-ratings">
				    <div class="tripstory-star-ratings-fill space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
				      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			      </div>
			      <div class="tripstory-star-ratings-base space-x-2 text-lg">
				    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			      </div>
		        </div>
		  		  <span class="tripstory-explanation">일상 탈출러를 위한 당진</span><br>
		 		  <span class="tripstory-region">
		 		    <img src="${root}/image/asset/여행지 위치아이콘.png" class="tripstory-regionicon">
		 		    충청남도 당진시
		 		  </span>
	          </div>
	        </td>
	      </tr>
	    </table>
	    
		<div class="tripstory-banner">
		  <img src="${root }/image/asset/메인-여행이야기배너.png" width="440" >
		  <br>
		  <span class="tripstory-subject"><a>오늘의 여행<img src="${root }/image/asset/메인-오늘의여행더보기아이콘.png"></a></span>
		  <br>
		  <span class="tripstory-list">
		  <a class="fontgreen">부산 | </a><a>여행 게시글 제목 여행 게시글 제목</a><br>
		  <a class="fontgreen">대전 | </a><a>여행 게시글 제목~</a><br>
		  <a class="fontgreen">경주 | </a><a>여행 게시글 제목입니다</a><br>
		  <a class="fontgreen">대구 | </a><a>추억의 대구 여행 게시글 제목!</a><br>
		  <a class="fontgreen">당진 | </a><a>오늘의 추천 여행 이야기, 충청남도 당진 이야기</a><br>
		  <a class="fontgreen">제주 | </a><a>여행 게시글 제목 여행 게시글 제목 여행 게시글...</a><br>
		  </span>
		</div>
	  </div>
	  
	  <br>
	  
		  <div class="newpark">
			새로 오픈한 테마파크 <img class="icon" src="${root }/image/asset/메인-테마파크아이콘.png">
		    
		     <div class="slider">
			    <div>
			    <table>
			      <tr>
			        <td>
			          <div class="newpark-content">
			            <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="newpark-trip-img">
			            <span class="newpark-trip-name">제주 신화월드 테마파크</span>
				          <div class="newpark-star-ratings2">
						    <div class="newpark-star-ratings-fill2 space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
						      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
					      </div>
					      <div class="newpark-star-ratings-base2 space-x-2 text-lg">
						    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
					      </div>
				        </div>
				 		  <span class="newpark-trip-region">
				 		    <img src="${root}/image/asset/여행지 위치아이콘.png" class="newpark-regionicon">
				 		    제주도 서귀포시</span>
		              </div>
			        </td>
			        <td>
			          <div class="newpark-content">
			            <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="newpark-trip-img">
			            <span class="newpark-trip-name">제주 신화월드 테마파크</span>
				          <div class="newpark-star-ratings2">
						    <div class="newpark-star-ratings-fill2 space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
						      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
					      </div>
					      <div class="newpark-star-ratings-base2 space-x-2 text-lg">
						    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
					      </div>
				        </div>
				 		  <span class="newpark-trip-region">
				 		    <img src="${root}/image/asset/여행지 위치아이콘.png" class="newpark-regionicon">
				 		    제주도 서귀포시</span>
		              </div>
			        </td>
			        <td>
			          <div class="newpark-content">
			            <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="newpark-trip-img">
			            <span class="newpark-trip-name">제주 신화월드 테마파크</span>
				          <div class="newpark-star-ratings2">
						    <div class="newpark-star-ratings-fill2 space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
						      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
					      </div>
					      <div class="newpark-star-ratings-base2 space-x-2 text-lg">
						    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
					      </div>
				        </div>
				 		  <span class="newpark-trip-region">
				 		    <img src="${root}/image/asset/여행지 위치아이콘.png" class="newpark-regionicon">
				 		    제주도 서귀포시</span>
		              </div>
			        </td>
			      </tr>
		        </table>
				</div>
				
			    <div>
			      <div>
			    <table>
			      <tr>
			        <td>
			          <div class="newpark-content">
			            <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="newpark-trip-img">
			            <span class="newpark-trip-name">제주 신화월드 테마파크</span>
				          <div class="newpark-star-ratings2">
						    <div class="newpark-star-ratings-fill2 space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
						      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
					      </div>
					      <div class="newpark-star-ratings-base2 space-x-2 text-lg">
						    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
					      </div>
				        </div>
				 		  <span class="newpark-trip-region">
				 		    <img src="${root}/image/asset/여행지 위치아이콘.png" class="newpark-regionicon">
				 		    제주도 서귀포시</span>
		              </div>
			        </td>
			        <td>
			          <div class="newpark-content">
			            <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="newpark-trip-img">
			            <span class="newpark-trip-name">제주 신화월드 테마파크</span>
				          <div class="newpark-star-ratings2">
						    <div class="newpark-star-ratings-fill2 space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
						      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
					      </div>
					      <div class="newpark-star-ratings-base2 space-x-2 text-lg">
						    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
					      </div>
				        </div>
				 		  <span class="newpark-trip-region">
				 		    <img src="${root}/image/asset/여행지 위치아이콘.png" class="newpark-regionicon">
				 		    제주도 서귀포시</span>
		              </div>
			        </td>
			        <td>
			          <div class="newpark-content">
			            <img src="${root}/image/asset/메인-테마파크예시이미지.png" class="newpark-trip-img">
			            <span class="newpark-trip-name">제주 신화월드 테마파크</span>
				          <div class="newpark-star-ratings2">
						    <div class="newpark-star-ratings-fill2 space-x-2 text-lg" style="{ width: ratingToPercent + '%' }">
						      <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
					      </div>
					      <div class="newpark-star-ratings-base2 space-x-2 text-lg">
						    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
					      </div>
				        </div>
				 		  <span class="newpark-trip-region">
				 		    <img src="${root}/image/asset/여행지 위치아이콘.png" class="newpark-regionicon">
				 		    제주도 서귀포시</span>
		              </div>
			        </td>
			      </tr>
		        </table>
				</div>
			   </div>
		    </div>
		  </div>
		  
		  <div class="cosmap">
		    <table class="cosmaptb">
		      <tr>
		        <td>
		          <span>나만의 코스짜기</span><br>
		          <span class="smfont">내가 직접 만드는 코스! 이런 여행 어때?</span>
		        </td>
		        <td>
		          <span>지도로 찾는 여행지</span><br>
		          <span class="smfont">지역을 선택해 여행지를 찾아보세요!</span>
		        </td>
		      </tr>
		      <tr>
		        <td>
		          <div class="cosimg" onclick="#"></div>
		        </td>
		        <td>
		          <div class="mapimg" onclick="#"></div>
		        </td>
		      </tr>
		    </table>
		  </div>
	 </div>
	 
	 <div class="nowfes">
	   지금 진행중인 축제 <img class="icon" src="${root }/image/asset/메인-축제아이콘.png">
		
		<div class="slider">
			    <div>
			    <table>
			      <tr>
			        <td>	          
				      <div class="nowfes-content">
			            <img src="${root}/image/asset/축제예시.png" class="nowfes-trip-img">
			            <span class="nowfes-trip-name">남이섬 청춘 페스티벌</span>
				 		<span class="nowfes-trip-region">
				 		<img src="${root}/image/asset/여행지 위치아이콘.png" class="nowfes-regionicon">
				 		강원도 춘천시 남이섬길1</span>
		             </div>
			        </td>
			        <td>	          
				      <div class="nowfes-content">
			            <img src="${root}/image/asset/축제예시.png" class="nowfes-trip-img">
			            <span class="nowfes-trip-name">남이섬 청춘 페스티벌</span>
				 		<span class="nowfes-trip-region">
				 		<img src="${root}/image/asset/여행지 위치아이콘.png" class="nowfes-regionicon">
				 		강원도 춘천시 남이섬길1</span>
		             </div>
			        </td>
			        <td>	          
				      <div class="nowfes-content">
			            <img src="${root}/image/asset/축제예시.png" class="nowfes-trip-img">
			            <span class="nowfes-trip-name">남이섬 청춘 페스티벌</span>
				 		<span class="nowfes-trip-region">
				 		<img src="${root}/image/asset/여행지 위치아이콘.png" class="nowfes-regionicon">
				 		강원도 춘천시 남이섬길1</span>
		             </div>
			        </td>
			        <td>	          
				      <div class="nowfes-content">
			            <img src="${root}/image/asset/축제예시.png" class="nowfes-trip-img">
			            <span class="nowfes-trip-name">남이섬 청춘 페스티벌</span>
				 		<span class="nowfes-trip-region">
				 		<img src="${root}/image/asset/여행지 위치아이콘.png" class="nowfes-regionicon">
				 		강원도 춘천시 남이섬길1</span>
		             </div>
			        </td>
			      </tr>
		        </table>
				</div>
				
			    <div>
			      <div>
			         <table>
			      <tr>
			        <td>	          
				      <div class="nowfes-content">
			            <img src="${root}/image/asset/축제예시.png" class="nowfes-trip-img">
			            <span class="nowfes-trip-name">남이섬 청춘 페스티벌</span>
				 		<span class="nowfes-trip-region">
				 		<img src="${root}/image/asset/여행지 위치아이콘.png" class="nowfes-regionicon">
				 		강원도 춘천시 남이섬길1</span>
		             </div>
			        </td>
			        <td>	          
				      <div class="nowfes-content">
			            <img src="${root}/image/asset/축제예시.png" class="nowfes-trip-img">
			            <span class="nowfes-trip-name">남이섬 청춘 페스티벌</span>
				 		<span class="nowfes-trip-region">
				 		<img src="${root}/image/asset/여행지 위치아이콘.png" class="nowfes-regionicon">
				 		강원도 춘천시 남이섬길1</span>
		             </div>
			        </td>
			        <td>	          
				      <div class="nowfes-content">
			            <img src="${root}/image/asset/축제예시.png" class="nowfes-trip-img">
			            <span class="nowfes-trip-name">남이섬 청춘 페스티벌</span>
				 		<span class="nowfes-trip-region">
				 		<img src="${root}/image/asset/여행지 위치아이콘.png" class="nowfes-regionicon">
				 		강원도 춘천시 남이섬길1</span>
		             </div>
			        </td>
			        <td>	          
				      <div class="nowfes-content">
			            <img src="${root}/image/asset/축제예시.png" class="nowfes-trip-img">
			            <span class="nowfes-trip-name">남이섬 청춘 페스티벌</span>
				 		<span class="nowfes-trip-region">
				 		<img src="${root}/image/asset/여행지 위치아이콘.png" class="nowfes-regionicon">
				 		강원도 춘천시 남이섬길1</span>
		             </div>
			        </td>
			      </tr>
		        </table>
				</div>
			   </div>
		    </div>
		
	 </div>
	  

	</div><!-- main 끝 -->

	<!-- footer 시작 -->
	<div class="footer">
		<img class="logowhite" src="${root }/image/asset/로고white.png">
		<img class="footerdeco" src="${root }/image/asset/개발도구.png">
		<pre class="pre1">(주) 2RUN TRIP
서울특별시 강남구 이런트립타워 2층		고객센터 : 2222-2222
사업자등록번호: 222-22-22222		이메일 : 2RUN@gmail.com
ⓒ 2022 2Run Trip Company. All Rights Reserved.</pre>
		<pre class="pre2">이다솔
김은비
김태민
이용기
차동현
이강진</pre>
	</div><!-- footer 끝 -->
	
</div>
</body>
</html>