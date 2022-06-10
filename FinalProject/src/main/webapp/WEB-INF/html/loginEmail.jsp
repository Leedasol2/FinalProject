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
<link rel="stylesheet" href="${root }/css/loginEmail.css" />
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

	<!-- main 시작 -->
	<div class="main">
	<div class="login-email">
		
		<table class="login-email-header">
			<tr>
			<td class="login-email-email"><img class="login-email" src="${root }/image/asset/이메일인증green.png" width = "25px">&nbsp; 1.이메일 인증</td>
			
			<td><hr class="login-email-line"></td>
			
			<td class="login-email-info"><img class="login-email" src="${root }/image/asset/정보입력black.png" width = "25px">&nbsp; 2.정보입력 및 약관동의</td>
			
			<td><hr class="login-email-line"></td>
			
			<td class="login-email-end"><img class="login-email" src="${root }/image/asset/가입완료black.png" width = "25px">&nbsp; 3.가입완료</td>			
			
			</tr>
		</table>
		
		<br>
		<div class = "edong">	
		<span class="login-email-title">이메일 인증</span>
		</div>
			<table class="login-email-table">
								
					<tr>
					<td class= "login-email-content"><input type="text" name="email" class="form-loginemail-input" 
					placeholder="   이메일 주소를 입력해 주세요." required="required">
					<img class="login-email-content" src="${root }/image/asset/이메일아이콘.png" width = "25px">
					</td>
					<td><button type="submit" class= "btn-email" >인증 요청</button></td>
					</tr>
	
					<tr>
					<td class="login-email-empty"></td>
					</tr>
					
					<tr>
					<td class= "login-email-content"><input type="text" name="code" class="form-loginemail-input" 
					placeholder="   인증코드를 입력해 주세요" required="required">
					<img class="login-email-content" src="${root }/image/asset/x.png" width = "25px">
					</td>
					<td><button type="submit" class= "btn-code">인증 확인</button></td>
					</tr>
						
				</table>
			

				<button type="submit" class= "btn-back"><img class="login-email-back" src="${root }/image/asset/이전으로아이콘.png" width = "25px">이전으로</button>
				<button type="submit" class= "btn-next">다음으로<img class="login-email-next" src="${root }/image/asset/다음으로아이콘.png" width = "25px"></button>

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