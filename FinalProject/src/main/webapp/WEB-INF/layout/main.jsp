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
               
                   <!-- 시흥시 오이도 -->
                  <li class="slideitem">
                     <div>
                        <label for="slide04" class="left"></label> <label for="slide02" class="right"></label>
                        <a href="/myTrip/myTripDetail?tnum=98"><img src="${root }/image/asset/banner1.png"></a>
                     </div>

                  </li>
                  
                  <!-- 경주 안압지 -->
                  <li class="slideitem">
                     <div>
                        <label for="slide01" class="left"></label> <label for="slide03" class="right"></label>
                        <a href="/myTrip/myTripDetail?tnum=168"><img src="${root }/image/asset/banner2.png"></a>
                     </div>
                  </li>
                  
                  <!-- 신안군 흑산도 -->
                  <li class="slideitem">
                     <div>
                        <label for="slide02" class="left"></label> <label for="slide04" class="right"></label>
                        <a href="/myTrip/myTripDetail?tnum=155"><img src="${root }/image/asset/banner3.png"></a>
                     </div>
                  </li>
                  
                  <!-- 덕수궁 -->
                  <li class="slideitem">
                     <div>
                        <label for="slide03" class="left"></label> <label for="slide01" class="right"></label>
                        <a href="/myTrip/myTripDetail?tnum=24"><img src="${root }/image/asset/banner4.png"></a>
                     </div>
                  </li>
                  
               </ul>
            </div><!-- 배너끝 -->
            
            <!-- 여행이야기 -->
            <div class="section tripstory">
               <div class="title">여행이야기</div>
               <div class="content">
               <div class="card-box">
               
                 <c:forEach var="tdto" items="${triplist}" begin="0" end="3">
                  <div class="tripstory-content">
                    <c:forTokens var="img" items="${tdto.image }" delims="," begin="0" end="0">
                       <c:if test="${tdto.part=='trip'}">
                           <img src="${root}/image/tripspot/${img}" class="tripstory-img" onclick="location.href='/myTrip/myTripDetail?tnum=${tdto.tnum}'">
                         </c:if>
                           <c:if test="${tdto.part=='themepark'}">
                         <img src="${root}/image/themepark/${img}" class="tripstory-img" onclick="location.href='/myTrip/themeParkDetail?tnum=${tdto.tnum}'">
                       </c:if>
                       <c:if test="${tdto.part=='festival'}">
                         <img src="${root}/image/festival/${img}" class="tripstory-img" onclick="location.href='/myTrip/festivalDetail?tnum=${tdto.tnum}'">
                       </c:if>
                    </c:forTokens>
                     
                        <c:if test="${tdto.part=='trip'}">
                          <span class="maintriptitle" onclick="location.href='/myTrip/myTripDetail?tnum=${tdto.tnum}'">${tdto.title }</span>
                        </c:if>
                        <c:if test="${tdto.part=='themepark'}">
                          <span class="maintriptitle" onclick="location.href='/myTrip/themeParkDetail?tnum=${tdto.tnum}'">${tdto.title }</span>
                          </c:if>
                          <c:if test="${tdto.part=='festival'}">
                            <span class="maintriptitle" onclick="location.href='/myTrip/festivalDetail?tnum=${tdto.tnum}'">${tdto.title }</span>
                          </c:if>
                        
                        <div class="trip-star-rating">
                          <div class="trip-reviewstar">
                              <c:if test="${tdto.avgrstar==0 }">
                             <div class="maintripDetail0-reviewstar">
                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                                   </div>
                                 </c:if>
                                 <c:if test="${tdto.avgrstar==1 }">
                                   <div class="maintripDetail1-reviewstar">
                                       <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                                   </div>
                           </c:if>
                           <c:if test="${tdto.avgrstar==2 }">
                             <div class="maintripDetail2-reviewstar">
                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                             </div>
                           </c:if>
                           <c:if test="${tdto.avgrstar==3 }">
                             <div class="maintripDetail3-reviewstar">
                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                             </div>
                           </c:if>
                           <c:if test="${tdto.avgrstar==4 }">
                             <div class="maintripDetail4-reviewstar">
                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                             </div>
                           </c:if>
                           <c:if test="${tdto.avgrstar==5 }">
                             <div class="maintripDetail5-reviewstar">
                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                             </div>
                           </c:if>
                          </div>
                         </div>
      
                        <div class="maintripstory-explanation">${tdto.intro }</div>
                        <div class="maintripstory-region">${tdto.location }</div>
                     
                  </div>
               </c:forEach>
                           
                  </div>

                  <div class="banner-box">
                     <div class="img-box">
                        <img src="${root}/image/asset/main-tripstorybanner.png">
                     </div>
                     <div class="tripstory-subject" onclick="location.href='/board/shareTripHome'">
                        <a >오늘의 여행</a>
                     </div>
                     <ul class="tripstory-list">
                       <c:forEach var="bdto" items="${boardlist}" begin="0" end="7">
                          <!-- 지역이 없어서 출력형태 수정필요 -->
                        <li><a href="/board/detail?bnum=${bdto.bnum}&currentPage=1"><span class="fontgreen">좋아요 ${bdto.likes }</span><span>${bdto.subject }</span></a></li> 
                        </c:forEach>
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
   
                     <c:forEach var="theme" items="${themeparklist}" begin="0" end="7">
                        <div class="swiper-slide">
                           <div class="newpark-content">
                             <c:forTokens var="img" items="${theme.image }" delims="," begin="0" end="0">
                                 <img src="${root}/image/themepark/${img}" class="tripstory-img"
                                 onclick="location.href='/myTrip/themeParkDetail?tnum=${theme.tnum}'">
                                </c:forTokens>
                              <div class="name-box">
                                 <div class="tripstory-name">
                                    <a href="/myTrip/themeParkDetail?tnum=${theme.tnum}">${theme.title }</a>
                                 </div>
                                 
                        <div class="trip-star-rating">
                          <div class="trip-reviewstar">
                              <c:if test="${theme.avgrstar==0 }">
                             <div class="themetripDetail0-reviewstar">
                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                                   </div>
                                 </c:if>
                                 <c:if test="${theme.avgrstar==1 }">
                                   <div class="themetripDetail1-reviewstar">
                                       <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                                   </div>
                           </c:if>
                           <c:if test="${theme.avgrstar==2 }">
                             <div class="themetripDetail2-reviewstar">
                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                             </div>
                           </c:if>
                           <c:if test="${theme.avgrstar==3 }">
                             <div class="themetripDetail3-reviewstar">
                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                             </div>
                           </c:if>
                           <c:if test="${theme.avgrstar==4 }">
                             <div class="themetripDetail4-reviewstar">
                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                             </div>
                           </c:if>
                           <c:if test="${theme.avgrstar==5 }">
                             <div class="themetripDetail5-reviewstar">
                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                             </div>
                           </c:if>
                          </div>
                         </div>
                                 
                              </div>
                              <div class="explain-box">
                                 <div class="themetripstory-region">${theme.location }</div>
                              </div>
                           </div>
                        </div>   
                     </c:forEach>   
                  
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
                     
                     <c:forEach var="festival" items="${festivallist}" begin="0" end="7">
                        <div class="swiper-slide">
                           <div class="newpark-content">
                             <c:forTokens var="img" items="${festival.image}" delims="," begin="0" end="0">
                                 <img src="${root}/image/festival/${img}" class="tripstory-img"
                                 onclick="location.href='/myTrip/festivalDetail?tnum=${festival.tnum}'">
                                </c:forTokens>
                              <div class="name-box">
                                 <div class="tripstory-name">
                                    <a href="/myTrip/festivalDetail?tnum=${festival.tnum}">${festival.title}</a>
                                 </div>
                              </div>
                              <div class="explain-box">
                                 <div class="tripstory-region">${festival.location}</div>
                              </div>
                           </div>
                        </div>
                     </c:forEach>
         
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