var calendar;
	
var fesAjax = function(day){
	var vo='{"day":"'+day+'"}';
	//alert(day)
	$.ajax({
	        type : "post",
	        url : "/myTrip/getfescount",
	        contentType: 'application/json',
	        dataType: "json",
	        data: vo,
	        success : function (data) {
	        	//alert("test")
	        	calendar.addEvent({
					title: data+"개의 축제",
					start:day,
					end:day
				});
	        }
     	});
}		
var roadData = function(){
	
				
	for(var i=1; i<31;i++){
		var day='';
		if(i<10){
			day='2022-06-0'+i;
		}else{
			day='2022-06-'+i;
		}
		
		//alert(day)
		//var festotalCount=document.getElementById('festotalCount').value;
		
		fesAjax(day);
		
	}
}



			

document.addEventListener('DOMContentLoaded', function () {
	//var festotalCount=document.getElementById('festotalCount').value;

            var calendarEl = document.getElementById('calendar');
            calendar = new FullCalendar.Calendar(calendarEl, {
	
				locale : 'ko',
                timeZone: 'Asia/Seoul', //UTC로 하면 일정이 전부 하루씩 당겨짐, local이나 Asia/Seoul로 하면 마지막 날짜 짤림
                initialView: 'dayGridMonth', // 홈페이지에서 다른 형태의 view를 확인할  수 있다.
                headerToolbar: {
					left: 'addEventButton',
                    center: 'title' // headerToolbar에 버튼을 추가
                }, customButtons: {
                },
                editable: false, // false로 변경 시 draggable 작동 x 
                displayEventTime: false, // 시간 표시 x
                eventClick: function(info) {
					    $("#festivalcalendar-content").attr('style',"visibility: visible;");
			  },
			 
			  
			  
            });
            
            
            calendar.render();
            roadData();
            
            
            
        });
        
