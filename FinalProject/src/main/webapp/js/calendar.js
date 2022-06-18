var calendar;
var loadCalendarEvent = function(){
				// 1. remove all events
				calendar.removeAllEvents();
				
				// 2. init all events
				$.ajax({
						type: "get",
						dataType: "json",
						url: "/mypage/ScheList",
						success: function(r) {
							for(var i=0; i < r.length; i++) {
								calendar.addEvent({
									title: r[i]['content'],
									start: r[i]['beginday'],
									end: r[i]['endday'],
								});
							}
						}
					});
			}

document.addEventListener('DOMContentLoaded', function () {
	/*$.ajax({
		type: "get",
		dataType: "json",
		url: "/mypage/ScheList",
		//contentType: 'application/json',
		success: function(data) {
			console.log(data);
		}
	});*/
			
			
            var calendarEl = document.getElementById('calendar');
            calendar = new FullCalendar.Calendar(calendarEl, {
				locale : 'ko',
                timeZone: 'UTC',
                initialView: 'dayGridMonth', // 홈페이지에서 다른 형태의 view를 확인할  수 있다.
                headerToolbar: {
					left: 'addEventButton',
                    center: 'title' // headerToolbar에 버튼을 추가
                }, customButtons: {
                    addEventButton: { // 추가한 버튼 설정
                        text : "일정 추가",  // 버튼 내용
                        click : function(){ // 버튼 클릭 시 이벤트 추가
                            $("#calendarModal").modal("show"); // modal 나타내기

                            $("#addCalendar").on("click",function(){  // modal의 추가 버튼 클릭 시
                                var content = $("#calendar_content").val();
                                var start_date = $("#calendar_start_date").val();
                                var end_date = $("#calendar_end_date").val();
                                
                                //내용 입력 여부 확인
                                if(content == null || content == ""){
                                    alert("내용을 입력하세요.");
                                }else if(start_date == "" || end_date ==""){
                                    alert("날짜를 입력하세요.");
                                }else if(new Date(end_date)- new Date(start_date) < 0){ // date 타입으로 변경 후 확인
                                    alert("종료일이 시작일보다 먼저입니다.");
                                }else{ // 정상적인 입력 시
                                    var obj = {
                                        "content" : content,
                                        "beginday" : start_date,
                                        "endday" : end_date
                                    }//전송할 객체 생성

                                    console.log(obj); //서버로 해당 객체를 전달해서 DB 연동 가능
                                    
                                    $.ajax({
                                    	type:"post",
                                    	dataType:"json",
                                    	url:"/mypage/ScheInsert",
                                    	contentType: 'application/json',
                                    	data:JSON.stringify(obj),
                                    	success:function(data){
											$('#calendarModal [data-dismiss]').click();	
											loadCalendarEvent();				
										}
									});
                                    
                                }
                            });
                        }
                    }
                },
                editable: true, // false로 변경 시 draggable 작동 x 
                displayEventTime: false // 시간 표시 x
            });
            
            calendar.render();
            loadCalendarEvent();
            
        });