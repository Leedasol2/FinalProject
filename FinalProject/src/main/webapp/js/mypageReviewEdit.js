$(document).ready(function() {

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
	
var rstar=$('input[name=dtorstar]').val();
for(var i=1;i<=5;i++){
	if(rstar==i){
		$(":radio[id='"+i+"-stars']").attr('checked', true);
	};
};

});