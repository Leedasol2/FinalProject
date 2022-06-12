<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>
</head>
<body>

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
				<hr class="memberedit-title-line">
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
						<button type="submit" class="btn-update-information" >정보수정하기</button>
						<button type="submit" class="btn-delete">탈퇴하기</button>

					</div>

				</form>
			</div>

		</div>
		<!-- main 끝 -->

</body>
</html>