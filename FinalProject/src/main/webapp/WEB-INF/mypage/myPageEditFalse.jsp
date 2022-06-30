<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>

<script type="text/javascript">

</script>

</head>
<body>

		<!-- main 시작 -->
<div class="container">
	<div class="inner calendar">
		<div class="mypage mypage-edit">
			<div class="mypage-header">
				<div class="mypage-title">마이페이지</div>
				<div class="mypage-menu">
					<ul class="mypage-ul">
						<li class="mypage-li"><a href="${root}/mypage/myPageEdit">회원정보수정</a></li> <!-- 추후에 맵핑주소 보고 바꾸기 -->
						<li class="mypage-li"><a href="${root}/mypage/myPageScrap">스크랩</a></li> 
						<li class="mypage-li"><a href="${root}/html/myPageCalendar">마이캘린더</a></li>
						<li class="mypage-li"><a href="${root}/mypage/myPageReview">리뷰</a></li>
					</ul>
				</div>
				<div class="hr"><hr></div>
			</div>
			
			<div class="editmember">
			<form action="/mypage/updateedit" method="post" class="form-memberform">				
	  			<input type="hidden" name="mnum" value="${dto.mnum }">
				
					<table class="edit-content">
						<tr>
							<th align="left">이름</th>
							<td><input type="text" name="name"
								class="form-control-inputread" placeholder="홍길동"
								readonly="readonly" value="${dto.name}"></td>
						</tr>

						<tr>
							<th align="left">아이디</th>
							<td><input type="text" id="userid" name="userid"
								class="form-control-inputread" placeholder="2runtrip"
								readonly="readonly" value="${dto.userid}"></td>
						</tr> 

						<tr>
							<th>이메일</th>
							<td><input type="text" name="email"
								class="form-control-inputread" readonly="readonly" value="${dto.email}">
							</td>
						</tr>

						<tr>
							<th align="left">휴대폰번호</th>
							<td><input type="text" name="phone" class="form-control-inputbox"
								placeholder="010-0000-1324" value="${dto.phone}"></td>
						</tr>

						<tr>
							<th align="left">비밀번호</th>
							<td><input type="password" name="password" id="pass"
								class="form-control-inputbox userpasswd" placeholder="비밀번호가 서로 다릅니다." required="required"></td>
						</tr>
						
						<tr>
							<th align="left">비밀번호 확인</th>
							<td><input type="password" name="passcheck" id="pass2"
								class="form-control-inputbox userpasswd2" placeholder="변경할 비밀번호를 정확히 입력해 주세요." required="required"></td>
						</tr>
						
					</table>
				
					<div class="btn_group">

						<button type="submit" class="btn-update-information" >정보수정하기</button>
					</div>
					</form>
					<form action="/mypage/deleteedit" class="form-memberform">
						<button type="submit" class="btn-delete">탈퇴하기</button>
					</form>										

				
			</div>
		</div>
	</div>
</div>		
		
		
		<!-- main 끝 -->

</body>
</html>