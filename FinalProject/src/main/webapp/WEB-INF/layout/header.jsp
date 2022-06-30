<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>
<script type="text/javascript">
$(function(){
   $(".searchtext").on("keyup",function(key) {
      if( key.keyCode == 13 ){
         var searchtext = $(this).val(); 
         
         if(searchtext==null || searchtext==""){
            location.href='/myTrip/searchFail';
         }else{
            location.href='/myTrip/searchTrip?searchtext='+searchtext;
         }
      }
   });
});
</script>
</head>
<body>

   <!-- header 시작 -->
   <div class="header">
         <div class="top-box">
            <div class="inner">
               <div class="search-box">
                  <div class="logo">
                     <a href="/">
                        <img alt="2runtrip" src="${root}/image/asset/로고.png">            
                     </a>
                  </div>
                  <div class="search">
                     <input type="text" placeholder="이런 여행 없을까? 검색해보세요." class="searchtext">   
                  </div>
               </div>
               <div class="member-box">
                  <!-- 로그아웃 상태 -->
                  <c:if test="${empty sessionScope.loggedIn && empty sessionScope.loginok}">
						<button class="login" onclick="location.href='/loginHome'">로그인</button>
						</c:if>
						<c:if test="${empty sessionScope.loggedIn && empty sessionScope.loginok}">
						<button class="join" onclick="location.href='/joinMember/loginJoin'">회원가입</button>
						</c:if>
						<!-- 로그인 상태 -->
						<c:if test="${not empty sessionScope.loginok }">
						<b>${sessionScope.myid }님</b>
						<button class="logout" onclick="location.href='/login/logout'">로그아웃</button>
						</c:if>
						<c:if test="${not empty sessionScope.loggedIn }">
						<b>${sessionScope.loginName }님</b>
						<button class="kakaologout" onclick="kakaoLogout();">로그아웃</button>
						</c:if>
						<c:if test="${not empty sessionScope.loginok}">
						<button class="join" onclick="location.href='/mypage/myPageEdit'">마이페이지</button>
						</c:if>
						<c:if test="${not empty sessionScope.loggedIn}">
						<button class="join" onclick="location.href='/html/myPageEdit'">마이페이지</button>
						</c:if>
               </div>
            </div>
         </div>
         <div class="bottom-box">
            <div class="inner">
               <ul class="gnb">
                  <li>
                     <a href="/myTrip/bestTrip">여행을 떠나요</a>
                     <ul>
                        <li onclick="location.href='/myTrip/bestTrip'">베스트 여행지</li>
                        <li onclick="location.href='/myTrip/regionTrip'">지역별 여행지</li>
                        <li onclick="location.href='/myTrip/themaTrip'">테마별 여행지</li>
                     </ul>
                  </li>
                  <li>
                     <a href="/myTrip/themeParkList">액티비티</a>
                     <ul>
                        <li onclick="location.href='/myTrip/themeParkList'">테마파크</li>
                        <li onclick="location.href='/myTrip/festivalList'">축제</li>
                     </ul>
                  </li>
                  <li>
                     <a href="/board/shareTripHome">여행 공유</a>
                  </li>
                  <li>
                     <a href="#">나만의 코스짜기</a>
                  </li>
               </ul>
               <div class="perfect-trip">
                  <button class="perfect-trip-btn" onclick="location.href='/myTrip/myTripStart'">나에게 딱 맞는 여행지는?</button>
               </div>
            </div>
         </div>
      </div> <!-- header 끝 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('8148de36e2b8d4215e24f39fffbd1a62'); //발급받은 키 중 javascript키를 사용해준다.
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {

        	location.href="/login/logout";
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }    
  
  function sessionlogout(){
	  
	  location.href="/login/logout";
  }
</script>
</body>
</html>