<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>

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
			  <button type="button" class="btn-return" onclick="goBackUpdate()">이전으로</button>
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