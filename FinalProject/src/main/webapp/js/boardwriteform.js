$(document).ready(function() {

	$("span.photoimg").click(function(){
		
		$("#upload").trigger("click");
	});
	
    $("input#upload").change(function () {
        
    	//alert("test");
    	
        var fileInput = document.getElementById("upload");
          
        var files = fileInput.files;
        var fileCnt=files.length;
       	//alert(fileCnt);
        $("span#filenum").text("총 "+fileCnt+"개의 파일을 선택하셨습니다.");
    });
});

function goBack() {
	var a=confirm("작성을 취소하시겠습니까?")
	if(a)
		history.back();
}