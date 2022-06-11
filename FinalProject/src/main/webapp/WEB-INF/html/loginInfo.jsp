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
<link rel="stylesheet" href="${root }/css/loginInfo.css" />
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
	<div class="login-info">
		
		<table class="login-info-header">
			<tr>
			<td class="login-info-email"><img class="login-info" src="${root }/image/asset/이메일인증black.png" width = "25px">&nbsp; 1.이메일 인증</td>
			
			<td><hr class="login-info-line"></td>
			
			<td class="login-info-info"><img class="login-info" src="${root }/image/asset/정보입력green.png" width = "25px">&nbsp; 2.정보입력 및 약관동의</td>
			
			<td><hr class="login-info-line"></td>
			
			<td class="login-info-end"><img class="login-info" src="${root }/image/asset/가입완료black.png" width = "25px">&nbsp; 3.가입완료</td>			
			
			</tr>
		</table>
		
		<br>
		<div class = "edong">	
		<span class="login-info-title">회원 정보 입력</span>
		</div>
			<table class="login-info-table">
								
					<tr>
					<td class = "table-title">이름</td>
					<td class= "login-info-content"><input type="text" name="name" class="form-logineinfo-input" 
					placeholder="   실명을 입력해 주세요.">
					</td>
					</tr>
	
					<tr>
					<td class="login-info-empty"></td>
					</tr>
					
					<tr>
					<td class = "table-title">이메일</td>
					<td>
						<input type="text" name="email1" class="input-email" placeholder="   2RunTrip">
						<b>&nbsp;@&nbsp;</b>
						<input type="text" name="email2" id="email2" class="input-email" placeholder="   2RunTrip.com">
					</td>
					</tr>
					
					<tr>
					<td class="login-info-empty"></td>
					</tr>
					
					<tr>
					<td class = "table-title">아이디</td>
					<td class= "login-info-content"><input type="text" name="id" class="form-logineinfo-input" 
					placeholder="   ID" >
					</td>
					</tr>
					
					<tr>
					<td class="login-info-empty"></td>
					</tr>
					
					<tr>
					<td class = "table-title">비밀번호</td>
					<td class= "login-info-content"><input type="password" name="pass" class="form-logineinfo-input" 
					placeholder="   비밀번호" >
					</td>
					</tr>
					
					<tr>
					<td class="login-info-empty-small"></td>
					</tr>
															
					<tr>
					<td></td>
					<td class= "login-info-content"><input type="password" name="code" class="form-logineinfo-input" 
					placeholder="   비밀번호를 다시 입력해 주세요">
					</td>
					</tr>
					
					<tr>
					<td class="login-info-empty-small2"></td>
					</tr>
					
					<tr>
					<td></td>
					<td><a>※ 8 ~ 16자리의 문자와 숫자를 조합해서 만들어 주세요.</a></td>
					</tr>
					
					<tr>
					<td class="login-info-empty"></td>
					</tr>
					
					<tr>
					<td class = "table-title">휴대폰번호</td>
					<td class= "login-info-content"><input type="text" name="code" class="form-logineinfo-input" 
					placeholder="   01012345678">
					</td>
					</tr>
											
				</table>
				
				<div class = "btn-group1">
				<button type="submit" class= "btn-check-all"><img class="login-info-check" src="${root }/image/asset/저장.png" width = "20px">&nbsp; 전체동의</button><br>
				<button type="submit" class= "btn-check"><img class="login-info-check1" src="${root }/image/asset/저장.png" width = "17px">&nbsp; 개인정보 수집 및 이용에 대한 동의 
				<a class="a-color">(필수)</a></button><br>
				<button type="submit" class= "btn-check"><img class="login-info-check1" src="${root }/image/asset/저장.png" width = "17px">&nbsp; 개인정보 제 3자 제공에 대한 동의 
				<a class="a-color">(필수)</a></button><br>
				</div>
			

				<button type="submit" class= "btn-back"><img class="login-info-back" src="${root }/image/asset/이전으로아이콘.png" width = "25px">이전으로</button>
				&nbsp;
				<button type="submit" class= "btn-next">다음으로<img class="login-info-next" src="${root }/image/asset/다음으로아이콘.png" width = "25px"></button>

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