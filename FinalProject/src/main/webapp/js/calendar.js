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
									id: r[i]['schenum'],
									color: r[i]['schecolor'],
								});
							}
						}
					});
			}

document.addEventListener('DOMContentLoaded', function () {

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
                                }else if(new Date(end_date)- new Date(start_date) < 0){ 
                                    alert("종료일이 시작일보다 먼저입니다.");
                                }else{ // 정상적인 입력 시
                                var color = $("input[type=radio][name=calendar_color]:checked").val();
                                    var obj = {
                                        "content" : content,
                                        "beginday" : start_date,
                                        "endday" : end_date,
                                        "schecolor" : color,
                                    }//전송할 객체 생성

                                    console.log(obj); //서버로 해당 객체를 전달해서 DB 연동
                                    
                                    $.ajax({
                                    	type:"post",
                                    	dataType:"json",
                                    	url:"/mypage/ScheInsert",
                                    	contentType: 'application/json',
                                    	data:JSON.stringify(obj),
                                    	success:function(data){
											$('#calendarModal [data-dismiss]').click();
											window.location.reload();
										}
									});
                                    
                                }
                            });
                        }
                    }
                },
                editable: false, // false로 변경 시 draggable 작동 x 
                displayEventTime: false, // 시간 표시 x
                eventClick: function(info) {
							window.scrollTo( 0, 500 );
							
							var schenum=info.event.id;
	
							$.ajax({
								
								type: "post",
								dataType: "json",
								url: "/mypage/ScheGet",
                                contentType: 'application/json',
								data:schenum,
								success: function(data) {
									var s="";
									var start=(data.beginday).substr(0, 5);
									var startMonth=parseInt((data.beginday).substr(6, 3));
									var startday=parseInt((data.beginday).substr(8, 2))+1;
									
									var end=(data.endday).substr(0, 5);
									var endMonth=parseInt((data.endday).substr(6, 3));
									var endday=parseInt((data.endday).substr(8, 2))+1;
									
									if(startday==31){
										startMonth+=1;
										startday=1;
									}
									
									if(endday==32){
										endMonth+=1;
										endday=1;
									}
									
									
									var title=data.content;
									var color=data.schecolor;
									var schenum=data.schenum;
									
									s+="<div class='scheColor' style='background-color:"+color+"'>";
									s+="</div>";
									s+="<div class='scheduleEdit'>";
									s+="<div class='scheTitle'>"+title;
									s+="</div>";
									s+="<div class='scheDate'>";
									s+="<span class='scheStart'>"+start+startMonth+"-"+startday;
									s+="</span>";
									s+="<span class='scheEnd'>"+end+endMonth+"-"+endday;
									s+="</span>";
									s+="</div>";
									s+="<div class='EditBtn'>";
									s+="<button class='UpdateBtn' id='UpdateBtn'>수정</button>";
									s+="<button class='DeleteBtn' id='DeleteBtn'>삭제</button>";
									s+="</div>";
									s+="</div>";
									
									$("div.scheGet").html(s);
									
									$("#UpdateBtn").on("click",function(){
										$("#calendarModal-update").modal("show");
										$("#calendar_content_update").val(title);
										
										$("#updateCalendar").on("click",function(){
											var content = $("#calendar_content_update").val();
			                                var start_date = $("#calendar_start_date_update").val();
			                                var end_date = $("#calendar_end_date_update").val();
			                                var color = $("input[type=radio][name=calendar_color_update]:checked").val();
                                			
                                			//내용 입력 여부 확인
			                                if(content == null || content == ""){
			                                    alert("내용을 입력하세요.");
			                                }else if(start_date == "" || end_date ==""){
			                                    alert("날짜를 입력하세요.");
			                                }else if(new Date(end_date)- new Date(start_date) < 0){ 
			                                    alert("종료일이 시작일보다 먼저입니다.");
			                                }else{ // 정상적인 입력 시
			                                    var obj1 = {
			                                        "content" : content,
			                                        "beginday" : start_date,
			                                        "endday" : end_date,
			                                        "schecolor" : color,
			                                        "schenum" : schenum,
			                                    }//전송할 객체 생성
			
			                                    console.log(obj1); 
			                                    
			                                    $.ajax({
			                                    	type:"post",
			                                    	dataType:"json",
			                                    	url:"/mypage/ScheUpdate",
			                                    	contentType: 'application/json',
			                                    	data:JSON.stringify(obj1),
			                                    	success:function(data){
														$('#updateModalClose').click();	
														//loadCalendarEvent();				
													}
												});
												
												$("#calendar_content_update").val("");
				                                $("#calendar_start_date_update").val("");
				                                $("#calendar_end_date_update").val("");
	                                			
												window.location.reload();
			                                }
										});
										
									});
									$("#DeleteBtn").on("click",function(){
										if(confirm("'"+ info.event.title +"' 일정을 삭제하시겠습니까 ?")){
				                                // 확인 클릭 시
				                                $.ajax({
													type:"post",
													dataType:"text",
													url:"/mypage/ScheDelete",
													data : {'schenum':info.event.id},
													success: function(data){
														
													}
												});
												window.location.reload();
										}
									});
								}
								
							});
			  },
            });
            
            calendar.render();
            loadCalendarEvent();
            
            
        });
        
