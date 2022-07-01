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
$(function(){
	$("#btnUpdate").click(function(){
		var rcontents=$("#rcontents").val();
		if(rcontents.trim().length==0){
				alert("내용을 입력해주세요");
				$(this).prop("type","button");
				return;
			}
		else if (rcontents.trim().length>0) {
			$(this).prop("type","submit");
		}
	});
	

	var rstar=${dto.rstar};
	for(var i=1;i<=5;i++){
		if(rstar==i){
			$(":radio[id='"+i+"-stars']").attr('checked', true);
		};
	};
	
});

</script>
</head>
<body>
	<div class="container">
		<div class="inner review">
			<div class="mypage">
				<div class="mypage-header">
					<div class="mypage-title">마이페이지</div>
					<div class="mypage-menu">
						<ul class="mypage-ul">
							<li class="mypage-li"><a href="${root}/html/myPageEdit">회원정보수정</a></li> <!-- TODO: html을 mypage로 바꾸기 -->
							<li class="mypage-li"><a href="${root}/html/myPageScrap">스크랩</a></li> 
							<li class="mypage-li"><a href="${root}/html/myPageCalendar">마이캘린더</a></li>
							<li class="mypage-li"><a href="${root}/mypage/myPageReview">리뷰</a></li>
						</ul>
					</div>
					<div class="hr"><hr></div>
				</div>
				<form action="update" method="post">
					<input type="hidden" name="currentPage" value="${currentPage}">
					<input type="hidden" name="rnum" value="${dto.rnum}">
					<div class="review-list">
						<div class="review-contents">
							<div class="review-topbox">
								<div class="review-title">
									<a href="#">${dto.title}</a>
									<div class="modal-star-rating-review-write">
					                      <input type="radio" id="5-stars" name="rstar" value="5" />
					                      <label for="5-stars" class="star">&#9733;</label>
					                      <input type="radio" id="4-stars" name="rstar" value="4" />
					                      <label for="4-stars" class="star">&#9733;</label>
					                      <input type="radio" id="3-stars" name="rstar" value="3" />
					                      <label for="3-stars" class="star">&#9733;</label>
					                      <input type="radio" id="2-stars" name="rstar" value="2" />
					                      <label for="2-stars" class="star">&#9733;</label>
					                      <input type="radio" id="1-star" name="rstar" value="1" />
					                      <label for="1-star" class="star">&#9733;</label>
						   		</div>
								</div>
								<div class="review-edit">
									<div class="review-day"><span>${dto.rday}</span></div>
								</div>
							</div>
							<div class="review-ment">
								<textarea name="rcontents" id="rcontents" class="form-control">${dto.rcontents}</textarea>
							</div>
						</div>
						
						<div class="review-button">
							<button type="submit" id="btnUpdate">수정하기</button>
							<button type="button" onclick="history.back()">취소</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>