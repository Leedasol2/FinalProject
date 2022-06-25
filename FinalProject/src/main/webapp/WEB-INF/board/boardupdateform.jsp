<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>
<script type="text/javascript">
$(function(){
	
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
</script>

</head>
<body>

<!-- 본문 시작 -->
<div class="updateform-main">

	<div class="updateform-title">
	  <h2 class="updatehead">글 수정하기</h2>
	  <hr>
	</div>

	<div class="updateform-body">
	  <form action="/board/updateboard" method="post" enctype="multipart/form-data">
	  <input type="hidden" name="bnum" value="${dto.bnum }">
	    <table class="update-content">
		  <tr>
		    <td>
		      <input type="text" name="subject" required="required"
			  placeholder="제목을 입력해주세요" class="updatetitle"
			  value="${dto.subject }">
			</td>
		  </tr>

		  <tr>
			<td>
			  <textarea name="content" required="required"
			  placeholder="내용을 입력해주세요" class="textfield">${dto.content }</textarea>
		    </td>
		  </tr>

		  <tr>
              <td>
                <input type="file" name="upload" id="upload" multiple="multiple">
                <span class="filetitle">첨부파일</span>&nbsp;
                <span class="glyphicon glyphicon-picture photoimg"></span>
                <span id="filenum"></span>
                
              </td>
		  </tr>
						
		  <tr>
		    <td colspan="2" align="center">
			  <button type="button" class="btn-return" onclick="history.back()">이전으로</button>
		      <button type="submit" class="btn-update">수정하기</button>
			</td>
		  </tr>
		</table>
	</form>
  </div>
</div>
<!-- 본문 끝 -->

</body>
</html>