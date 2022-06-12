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
<link rel="stylesheet" href="${root }/css/boardDetailPage.css"/>
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


</head>
<body>

<!-- 본문 시작 -->
<form action="#" method="post">
 <table class="boardDetailPage">
  <tr>
    <td>
      <span class="boardtitle">게시글 제목</span><br>
      <span class="boardwriter">2runt***</span><br>
      <span class="boardinfo">2022.06.02&nbsp;07:50&nbsp;조회 850</span>
        <span class="likes-img"><img alt="" src="${root }/image/asset/추천.png" class="chuimage"></span><br>
        <span class="likes">추천수 22</span><br>
        <span class="board-upd">수정 |</span><span class="board-del"> 삭제</span>
      <hr class="underline">
    </td>
  </tr>
  
  <tr>
    <td>
      <pre class="content-body">
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      게시글 내용
      </pre>
   </td>
  </tr>
  
  <tr>
    <td>
      <span class="comment-count">댓글 3</span>
      <hr class="underline">
      <span class="comment-head">댓글</span>
    </td>
  </tr>
    
  <tr>
    <td class="comment">
      <span class="writer-id">asdfdg**</span>
      <span class="comment-del">삭제 |</span>
      <span class="comment-upd"> 수정</span>
      <span class="comment-day">2020-06-01 04:25</span><br>
      <span class="comment-content">댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용
      댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용</span><br>
      <button type="button" class="btnreply">답글</button>
      <hr class="comment-underline">
      
      <span class="writer-id">nnn34**</span>
      <span class="comment-day">2020-06-01 04:25</span><br>
      <span class="comment-content">댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용
      댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용</span><br>
      <button type="button" class="btnreply">답글</button>
      <hr class="comment-underline">
      
      <span class="boardowner-id">bnn1**</span>&nbsp;
      <span class="boardowner-writer">작성자</span>
      <span class="comment-day">2020-06-01 04:25</span><br>
      <span class="boardowner-content">감사합니다</span><br>
      <hr class="comment-underline">
      
      <span class="comment-writer">nnn34**</span>
      <button type="submit" class="comment-insertbtn">등록</button><br>
      <input type="text" name="comment" class="commentbox" required="required">
    </td>
  </tr>
  
  <tr>
    <td class="list">
      <hr class="underline">
      <button type="button" class="listbtn">목록</button>
    </td>
  </tr>
 </table>
</form>
<!-- 본문 끝 -->

</body>
</html>