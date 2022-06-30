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
	        	if(data>0){
	        	calendar.addEvent({
					title: data+"개의 축제",
					start:day,
					end:day
				});
				}
	        }
     	});
}		



var feslistAjax = function(day){
	var vo='{"day":"'+day+'"}';
	//alert(day)
	
	
	$.ajax({
	        type : "post",
	        url : "/myTrip/feslist",
	        contentType: 'application/json',
	        dataType: "json",
	        data: vo,
	        success : function (data) {
				var feshtml='';
	        	//alert(data.length);
	        	
	        	
	  
	        	if(data.length>0){
				$(data).each(function(){
					feshtml+='<div class="festivalcalendar-content-inner">';
					
					var imgstr=this.image;
					
					var imgfirst=imgstr.split(",");
					
					var startdate=moment(this.beginday).format("YYYY-MM-DD ");
					var enddate=moment(this.endday).format("YYYY-MM-DD ");
	
					feshtml+='<a href="festivalDetail?tnum='+this.tnum+'">';
					feshtml+='<img src="../image/festival/'+imgfirst[0]+'" class="festivalcalendar-img">';								
					feshtml+='</a>';
					feshtml+='<div class="festivalcalendar-first">'+this.title+'</div>';
					feshtml+='<div class="festivalcalendar-day">['+startdate+'-'+enddate+']<br><br></div>';
					feshtml+='<div class="festivalcalendar-two">'+this.intro+'<br></div>';
					feshtml+='</div> 	';
					feshtml+='</div> 	';
				
					
				});
			}
									
			      	$("div.fesList").html(feshtml);
		}
	       
     	});
     	 $("#festivalcalendar-content").attr('style',"visibility: visible;");
    
     	
}	




var roadData = function(){
	
   for(var j=1; j<=12; j++){
	
		var dayCount=new Date(2022,j,0).getDate();
		//console.log(dayCount)
		
		var month='';
		if(j<10){
			month='0'+j;
		}else{
			month=j;
		}
		
		for(var i=1; i<=dayCount; i++){
			var day='';
			
			if(i<10){
				day='2022-'+month+'-0'+i;
			}else{
				day='2022-'+month+'-'+i;
			}
			
			//console.log(day)
			//alert(day)
			fesAjax(day);
	}
	
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
					left: 'today',
                    center: 'title', // headerToolbar에 버튼을 추가
                    right: 'prev,next'
                },
                editable: false, // false로 변경 시 draggable 작동 x 
                displayEventTime: false, // 시간 표시 x
               dateClick: function(info) {
	  		      //alert('clicked ' + info.dateStr);
	  		      
	  		      feslistAjax(info.dateStr)
	  		      
	  		      
	  		    },
	   		    /*select: function(info) {
	    		    alert('selected ' + info.startStr + ' to ' + info.endStr);
	  		    },*/
	 		   
                //eventClick: function(info) {
					 //   $("#festivalcalendar-content").attr('style',"visibility: visible;");
					    
			  //	},
			  eventColor: '#00ff0000',
			  });
			
			      
            calendar.render();
            roadData();
            
            
            
        });
        
