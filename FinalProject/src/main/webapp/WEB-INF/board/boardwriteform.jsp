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
	<div class="writeform-main">
	
      <div class="writeform-title">
        <h2 class="writehead">글 작성하기</h2>
        <hr>
      </div>
      
      <div class="writeform-body"> 
        <form action="/board/write" method="post" enctype="multipart/form-data">
          <table class="write-content">
            <tr>
              <td>
                <input type="text" name="subject" required="required" placeholder="제목을 입력해주세요"
                class="writetitle">
              </td>
            </tr>
            
            <tr>
              <td>
                <textarea name="content" required="required" placeholder="내용을 입력해주세요"
                class="textfield"></textarea>
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
                <button type="button" class="btn-cancel" onclick="goBack()">취소하기</button>
                <button type="submit" class="btn-insert">등록하기</button>
              </td>
            </tr>
          </table>
        </form>
      </div>
      
	</div>
	<!-- 본문 끝 -->
	
</body>
</html>