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
	  			<input type="hidden" name="mnum" value="${dto.mnum }">
					
				<div class = "mypage-editsuccess-edong">
					<span class="mypage-editsuccess-title">수정이 완료되었습니다</span>
				</div>

				<div class="btn-editsuccess-group">

					<button type="submit" class="btn-update-information" onclick="location.href='/mypage/myPageEdit'">뒤로가기</button>
				</div>
					<button type="submit" class="btn-delete" onclick="location.href='/'">메인으로</button>													
			</div>
		</div>
	</div>
</div>		
		
		
		<!-- main 끝 -->

</body>
</html>