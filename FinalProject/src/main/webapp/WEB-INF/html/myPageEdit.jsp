<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>

<!-- root -->
<c:set var="root" value="<%=request.getContextPath()%>" />

<!-- CSS -->
<link rel="stylesheet" href="${root }/css/main.css" />
<link rel="stylesheet" href="${root }/css/myPageEdit.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css"> /* css파일에 적용했더니 안되고, 여기서 작성하면 적용되는 css들..ㅠㅠ */
input.search {
	background-image: url("${root }/image/asset/검색아이콘.png");
	background-repeat: no-repeat;
	background-position: 25px center;
}

a {
	text-decoration: none !important;
	color: #495056;
}

a:hover {
	text-decoration: none !important;
	color: #495056;
}
</style>

<!-- js -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>


</head>
<body>
	<div class="home">

		<!-- header 시작 -->
		<div class="header">
			<div class="headercontent">
				<a href="${root }/"><img class="logoimg"
					src="${root }/image/asset/로고.png"></a> <input type="text"
					name="search" class="search" placeholder="이런 여행 없을까? 검색해보세요">
				<button type="button" class="login">로그아웃</button>
				<button type="button" class="join">마이페이지</button>
				<img class="mainline" src="${root }/image/asset/메인-라인.png">

				<div id="container">
					<ul class="myMenu">
					
					</ul>

					
				</div>
			</div>
		</div>
		<!-- header 끝 -->

		<!-- main 시작 -->
		<div class="mypage-content">

			<div class="mypage-category">
				<span class="mypage-title">마이페이지</span>
				<ul class="mypage">
					<li class="mypage-editmember"><a href="#">회원정보수정</a></li>

					<li class="mypage-scrap"><a href="#">스크랩</a></li>

					<li class="mypage-mycalendar"><a href="#">마이캘린더</a></li>

					<li class="mypage-review"><a href="#">리뷰</a></li>
				</ul>
				<hr class="title-line">
			</div>
			<div class="editmember">
				<form action="#" method="post" class="form-memberform">
					<table class="edit-content">
						<tr>
							<th align="left">이름</th>
							<td><input type="text" name="name"
								class="form-control-inputread" placeholder="홍길동"
								readonly="readonly"></td>
						</tr>

						<tr>
							<th align="left">아이디</th>
							<td><input type="text" id="id" name="id"
								class="form-control-inputread" placeholder="2runtrip"
								readonly="readonly"></td>
						</tr>

						<tr>
							<th>이메일</th>
							<td><input type="text" name="email1"
								class="form-control-inputmail" required="required"> <b>@</b>
								<input type="text" name="email2" id="email2"
								class="form-control-inputmail" required="required"> <select
								id="selemail">
									<option value="_">직접입력</option>
									<option value="naver.com">네이버</option>
									<option value="gmail.com">구글</option>
									<option value="daum.net">다음</option>
									<option value="nate.com">네이트</option>
							</select></td>
						</tr>

						<tr>
							<th align="left">휴대폰번호</th>
							<td><input type="text" class="form-control-inputbox"
								placeholder="010-0000-0000"></td>
						</tr>

						<tr>
							<th align="left">비밀번호</th>
							<td><input type="password" name="pass"
								class="form-control-inputbox" placeholder="" required="required"></td>
						</tr>
					</table>

					<div class="btn_group">
						<button type="submit" class="btn-update" >정보수정하기</button>
						<button type="submit" class="btn-delete">탈퇴하기</button>

					</div>

				</form>
			</div>

		</div>
		<!-- main 끝 -->

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
		</div>
		<!-- footer 끝 -->

	</div>
</body>
</html>