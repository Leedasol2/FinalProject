<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>

<!-- root -->
<c:set var="root" value="<%=request.getContextPath() %>"/>

<!-- CSS -->
<link rel="stylesheet" href="${root }/css/main.css"/>
<link rel="stylesheet" href="${root }/css/updateform.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css"> /* css파일에 적용했더니 안되고, 여기서 작성하면 적용되는 css들..ㅠㅠ */
input.search
{
	background-image: url("${root }/image/asset/검색아이콘.png");
	background-repeat: no-repeat;
	background-position: 25px center;
}

a { text-decoration:none !important;color: #495056; }
a:hover { text-decoration:none !important;color: #495056; }

</style>

<!-- js -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript">

$(function(){
	
	$("span.photoimg").click(function(){
		
		$("#photo").trigger("click");
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
	  <form action="#" method="post" enctype="multipart/form-data">
	    <table class="update-content">
		  <tr>
		    <td>
		      <input type="text" name="title" required="required"
			  placeholder="제목을 입력해주세요" class="updatetitle"
			  value="제목불러오기제목불러오기제목불러오기제목불러오기제목불러오기">
			</td>
		  </tr>

		  <tr>
			<td>
			  <textarea name="content" required="required"
			  placeholder="내용을 입력해주세요" class="textfield">등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기
등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기
등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기
등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기
등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기
등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기
등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기
등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기
등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기
등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기
등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기등록된 내용 불러오기
              </textarea>
		    </td>
		  </tr>

		  <tr>
		    <td>
		      <input type="file" name="photo" id="photo"> 
		      <span class="filetitle">첨부파일</span>&nbsp; 
		      <span class="glyphicon glyphicon-picture photoimg"></span></td>
		  </tr>
						
		  <tr>
		    <td colspan="2" align="center">
			  <button type="button" class="btn-back" onclick="location.href=''">이전으로</button>
		      <button type="submit" class="btn-update" onclick="location.href=''">수정하기</button>
			</td>
		  </tr>
		</table>
	</form>
  </div>
</div>
<!-- 본문 끝 -->

</body>
</html>