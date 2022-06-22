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

<script type="text/javascript">
$(function() {
	$("button.btnreply").click(function() {
		
	})
	$("span#likes-img").click(function() {
		//alert("test"); 
 		
		/* 로그인중인 사용자가 추천을 했는지 안했는지 */
   		if(${mylike}){
			var a=confirm("추천을 취소하시겠습니까?");
		}else{
			var b=confirm("게시글을 추천하시겠습니까?");
		} 
		
		var sendBnum="bnum:"+${dto.bnum };
		
 		if(a){
			$(this).removeClass("likes-imgAfter");
			/* ajax로 likeuser에서 사용자 제거 */
		    $.ajax({
		        type : "post",
		        url : "/board/likeDel",
		        dataType: "json",
		        data: sendBnum,
		        success : function (data) {
		        	alert("해당 게시글을 추천하였습니다.")
		        	location.reload();
		        }
		     });
			
		}
		if(b){
			$(this).addClass("likes-imgAfter");
			/* ajax로 likeuser에서 사용자 추가 */
		    $.ajax({
		        type : "post",
		        url : "/board/likesUp",
		        dataType: "json",
		        data: sendBnum,
		        success : function (data) {
		        	alert("해당 게시글을 추천하였습니다.")
		        	location.reload();
		        }
		     });
			
		}   
		
		
	})
	
	
	//이미지 클릭시 해당 이미지 모달
    $("img.imagelist").on("click",function(){
        let img = new Image();
        img.src = $(this).attr("src")
        $('.modalBox').html(img);
        $(".imagemodal").show();
    });
	// 모달 클릭할때 이미지 닫음
    $(".imagemodal").on("click",function (e) {
	    $(".imagemodal").toggle();
  	});
	
	
})

</script>
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
        
        <c:if test="${mylike==true }">
        	<span class="likes-img glyphicon glyphicon-thumbs-up likes-imgAfter" id="likes-img"></span><br>
        </c:if>
        <c:if test="${mylike==false }">
        	<span class="likes-img glyphicon glyphicon-thumbs-up" id="likes-img"></span><br>
        </c:if>
        <span class="likes">추천수 ${dto.likes }</span><br>
        <!-- 로그인중인 아이디=글쓴이 아이디 -->
        <c:if test="${sessionScope.loginok=='yes' && sessionScope.myid==dto.writer}">
        	<span class="board-upd">수정 |</span><span class="board-del"> 삭제</span>
        </c:if>
        
      <hr class="underline">
    </td>
  </tr>
  
  <tr>
    <td>
      <pre class="content-body">${dto.content }</pre>
      <div class="imagelist">
      	<c:if test="${dto.photo!='no' }">
      		<!-- photo 분리 -->
      		<c:set var="photolist" value="${fn:split(dto.photo,',') }" />
      		<c:forEach var="image" items="${photolist }">
      			<img src="${root }/photo/${image }" class="imagelist">
      		</c:forEach>
      	</c:if>
      </div>
      
		<!-- 이미지 모달 -->
		<div class="imagemodal">
		    <div class="modalBox">
		    </div>
		</div>
     
   </td>
  </tr>
  
  <tr>
    <td>
      <span class="comment-count">댓글 ${commentCnt }</span>
      <hr class="underline">
      <span class="comment-head">댓글</span>
    </td>
  </tr>
    
  <tr>
    <!-- 댓글출력 -->
	<td class="comment">
      <div class="comment-group">
      	<!-- 댓글이 없을 때 -->
	    <c:if test="${commentCnt==0 }">
	    	첫 댓글을 작성해보세요!<br>
		    <hr class="comment-underline">
	    </c:if>
	    <!-- 댓글이 있을 때 -->
	    <c:if test="${commentCnt!=0 }">
	    	<c:forEach var="cdto" items="${clist }" >
	    	
	    	  <!-- 답글이 아닐 때 -->
	    	  <c:if test="${cdto.renum==0 }">
	    	  	  <span class="writer-id"><c:out value="${fn:substring(cdto.cwriter, 0, fn:length(cdto.cwriter) - 2)}"/>**</span>
	    	  	  <!-- 작성자일 때 -->
	    	  	  <c:if test="${cdto.cwriter.equals(dto.writer) }">
	    	  	  	<span class="boardowner-writer">작성자</span>
	    	  	  </c:if>
			      <span class="comment-day"><fmt:formatDate value="${cdto.writeday }" pattern="yyyy-MM-dd HH:mm"/></span>
			      <!-- 댓글작성자로 로그인중일때 -->
			      <c:if test="${sessionScope.loginok=='yes' && sessionScope.myid==cdto.cwriter }">
			      	<span class="comment-del">삭제 |</span><span class="comment-upd"> 수정</span>
			      </c:if>
			      <br><span class="comment-content">${cdto.content }</span><br>
			      <button type="button" class="btnreply">답글</button>

			      <hr class="comment-underline">
	    	  </c:if>
	    	  
	    	  	<!-- 답글 리스트 - 나중에 -->
		    	  <c:if test="${cdto.renum==cdto.cnum }">
		    	  
		    	  	<div class="replyComment">
				      <span class="writer-id"><c:out value="${fn:substring(cdto.cwriter, 0, fn:length(cdto.cwriter) - 2)}"/>**</span>&nbsp;
		    	  	  <!-- 작성자일 때 -->
		    	  	  <c:if test="${cdto.cwriter.equals(dto.writer) }">
		    	  	  	<span class="boardowner-writer">작성자</span>
		    	  	  </c:if>
				      <span class="comment-day"><fmt:formatDate value="${cdto.writeday }" pattern="yyyy-MM-dd HH:mm"/></span>
				      
				      <!-- 댓글작성자로 로그인중일때 -->
				      <c:if test="${cdto.cwriter.equals(sessionScope.myid) }">
				      	<span class="comment-del">삭제 |</span><span class="comment-upd"> 수정</span><br>
				      </c:if>
					  <span class="comment-content">${cdto.content }</span><br>
				      <hr class="comment-underline">
					    <!-- 답글작성 form-로그인 일때만 -->
					    <div class="replyform">
					      <c:if test="${sessionScope.loginok=='yes' }">
						      <form action="/comments/insert" method="post">
						      	<input type="hidden" name="bnum" value="${dto.bnum }">
						      	<input type="hidden" name="renum" value="0">
						      	<input type="hidden" name="currentPage" value="${currentPage }">
							      <span class="comment-writer"><c:out value="${fn:substring(sessionScope.myid, 0, fn:length(sessionScope.myid) - 2)}"/>**</span>
							      <span class="noReply">답글작성취소</span>
							      <button type="submit" class="comment-insertbtn">등록</button><br>
							      <input type="text" name="content" class="commentbox reply" required="required">
						      </form>
					      </c:if>
					    </div>
				    </div>
		    	  </c:if>
	    	</c:forEach>
      
	    </c:if>

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