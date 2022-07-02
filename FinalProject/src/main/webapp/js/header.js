$(function(){
   $(".searchtext").on("keyup",function(key) {
      if( key.keyCode == 13 ){
         var searchtext = $(this).val(); 
         
         if(searchtext==null || searchtext==""){
            location.href='/myTrip/searchFail';
         }else{
            location.href='/myTrip/searchTrip?searchtext='+searchtext;
         }
      }
   });
   $(".later").on("click",function(){
	  alert("추후 개발 예정") 
   });
});