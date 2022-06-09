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
<link rel="stylesheet" href="${root }/css/boardDetailPage.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css"> /* css파일에 적용했더니 안되고, 여기서 작성하면 적용되는 css들..ㅠㅠ */
input.search
{
	background-image: url("${root }/image/asset/검색아이콘.png");
	background-repeat: no-repeat;
	background-position: 25px center;
}

a { text-decoration:none !important;color: #495056; }
a:hover { text-decoration:none !important;color: #495056; }

</style>

<!-- js -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>


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

<!-- 본문 시작 -->
<form action="#" method="post">
 <table class="boardDetailPage">
  <tr>
    <td>
      <span class="boardtitle">게시글 제목</span><br>
      <span class="boardwriter">2runt***</span><br>
      <span class="boardinfo">2022.06.02&nbsp;07:50&nbsp;조회 850</span>
        <span class="likes-img"><img alt="" src="${root }/image/asset/추천.png" class="chuimage"></span><br>
        <span class="likes">추천수 22</span><br>
        <span class="board-upd">수정 |</span><span class="board-del"> 삭제</span>
      <hr class="underline">
    </td>
  </tr>
  
  <tr>
    <td>
      <pre class="content-body">
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      </pre>
   </td>
  </tr>
  
  <tr>
    <td>
      <span class="comment-count">댓글 3</span>
      <hr class="underline">
      <span class="comment-head">댓글</span>
    </td>
  </tr>
    
  <tr>
    <td class="comment">
      <span class="writer-id">asdfdg**</span>
      <span class="comment-del">삭제 |</span>
      <span class="comment-upd"> 수정</span>
      <span class="comment-day">2020-06-01 04:25</span><br>
      <span class="comment-content">댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용
      댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용</span><br>
      <button type="button" class="btnreply">답글</button>
      <hr class="comment-underline">
      
      <span class="writer-id">nnn34**</span>
      <span class="comment-day">2020-06-01 04:25</span><br>
      <span class="comment-content">댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용
      댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용</span><br>
      <button type="button" class="btnreply">답글</button>
      <hr class="comment-underline">
      
      <span class="boardowner-id">bnn1**</span>&nbsp;
      <span class="boardowner-writer">작성자</span>
      <span class="comment-day">2020-06-01 04:25</span><br>
      <span class="boardowner-content">감사합니다</span><br>
      <hr class="comment-underline">
      
      <span class="comment-writer">nnn34**</span>
      <button type="submit" class="comment-insertbtn">등록</button><br>
      <input type="text" name="comment" class="commentbox" required="required">
    </td>
  </tr>
  
  <tr>
    <td class="list">
      <hr class="underline">
      <button type="button" class="listbtn">목록</button>
    </td>
  </tr>
 </table>
</form>
<!-- 본문 끝 -->

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