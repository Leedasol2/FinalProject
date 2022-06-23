<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>

<!-- fullcalendar -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.6.0/main.min.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/fullcalendar@5.6.0/main.min.js"></script>

<link rel="stylesheet" href="${root}/css/myPageCalendar.css"/>
<!-- js -->
<script src="${root}/js/calendar.js"></script>

</head>
<body>
<div class="container">
	<div class="inner calendar">
		<div class="mypage mypage-calendar">
			<div class="mypage-header">
				<div class="mypage-title">마이페이지</div>
				<div class="mypage-menu">
					<ul class="mypage-ul">
						<li class="mypage-li"><a href="${root}/html/myPageEdit">회원정보수정</a></li> <!-- 추후에 맵핑주소 보고 바꾸기 -->
						<li class="mypage-li"><a href="${root}/html/myPageScrap">스크랩</a></li> 
						<li class="mypage-li"><a href="${root}/mypage/myPageCalendar">마이캘린더</a></li>
						<li class="mypage-li"><a href="${root}/mypage/myPageReview">리뷰</a></li>
					</ul>
				</div>
				<div class="hr"><hr></div>
			</div>


				<div id="calendarBox">
					<div id="calendar"></div>
				</div>
			</div>
	</div>
</div>

 <!-- modal 추가 -->
  <div class="modal" id="calendarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
      <div class="modal-dialog-cal" role="document">
            <div class="modal-content-cal">
                <div class="modal-header-cal">
                    <h5 class="modal-title-cal" id="exampleModalLabel">일정 등록</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="taskId" class="col-form-label">일정 내용</label>
                        <input type="text" class="form-control" id="calendar_content" name="calendar_content">
                        <label for="taskId" class="col-form-label">시작 날짜</label>
                        <input type="date" class="form-control" id="calendar_start_date" name="calendar_start_date">
                        <label for="taskId" class="col-form-label">종료 날짜</label>
                        <input type="date" class="form-control" id="calendar_end_date" name="calendar_end_date">
                        <label for="taskId" class="col-form-label">색상 선택</label>
                        <div class="radio-group">
	                        <input type="radio" name="calendar_color" value="#d50000" id="calendar_color" checked="checked">
	                        <input type="radio" name="calendar_color" value="#e67c73" id="calendar_color">
	                        <input type="radio" name="calendar_color" value="#f4511e" id="calendar_color">
	                        <input type="radio" name="calendar_color" value="#f6bf26" id="calendar_color">
	                        <input type="radio" name="calendar_color" value="#33b679" id="calendar_color">
	                        <input type="radio" name="calendar_color" value="#0b8043" id="calendar_color">
	                        <input type="radio" name="calendar_color" value="#039be5" id="calendar_color">
	                        <input type="radio" name="calendar_color" value="#3f51b5" id="calendar_color">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" id="addCalendar">추가</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"
                        id="sprintSettingModalClose">취소</button>
                </div>
    
            </div>
        </div>
    </div>
    
</body>
</html>