<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이런여행</title>
</head>
<body>

<!-- 본문 시작 -->
<div class="boardDetailPage-main">

 <table class="boardDetailPage">
  <tr>
    <td>
      <span class="boardtitle">${dto.subject }</span><br>
      <span class="boardwriter"><c:out value="${fn:substring(dto.writer, 0, fn:length(dto.writer) - 2)}"/>**</span><br>
      <span class="boardinfo"><fmt:formatDate value="${dto.writeday }" pattern="yyyy.MM.dd  HH:mm"/>&nbsp;&nbsp;조회 ${dto.views }</span>
        <span class="likes-img"><img alt="" src="${root }/image/asset/추천.png" class="chuimage"></span><br>
        <span class="likes">추천수 ${dto.likes }</span><br>
        <!-- 로그인중인 아이디=글쓴이 아이디 -->
        <c:if test="">
        	<span class="board-upd">수정 |</span><span class="board-del"> 삭제</span>
        </c:if>
        
      <hr class="underline">
    </td>
  </tr>
  
  <tr>
    <td>
      <pre class="content-body">${dto.content }</pre>
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
  <!-- 댓글출력 -->
    <td class="comment">
     <div class="comment-group">
      <span class="writer-id">asdfdg**</span>
      <span class="comment-day">2020-06-01 04:25</span>
      <span class="comment-del">삭제 |</span>
      <span class="comment-upd"> 수정</span><br>
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
      
      <!-- 댓글작성 form-로그인 일때만 -->
      <c:if test="${sessionScope.loginok=='yes' }">
	      <form action="/comments/insert" method="post">
	      	<input type="hidden" name="bnum" value="${dto.bnum }">
	      	<input type="hidden" name="renum" value="0">
	      	<input type="hidden" name="currentPage" value="${currentPage }">
		      <span class="comment-writer"><c:out value="${fn:substring(sessionScope.myid, 0, fn:length(sessionScope.myid) - 2)}"/>**</span>
		      <button type="submit" class="comment-insertbtn">등록</button><br>
		      <input type="text" name="content" class="commentbox" required="required">
	      </form>
      </c:if>
     </div>
    </td>
  </tr>
  
  <tr>
    <td class="list">
      <hr class="underline">
      <button type="button" class="listbtn">목록</button>
    </td>
  </tr>
 </table>

</div>
<!-- 본문 끝 -->

</body>
</html>