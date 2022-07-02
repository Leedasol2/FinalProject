$(document).ready(function() {

});
function goBackUpdate() {
	var a=confirm("수정을 취소하시겠습니까?")
	if(a)
		history.back();
}
