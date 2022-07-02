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
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script type="text/javascript">
$(function() {

	$("span#likes-img").click(function() {
		
		var loginok='<%=(String)session.getAttribute("loginok") %>';
		
		
		//alert(loginok!="null")
		
		//로그인 했는지 검사
		if(loginok=="null"){
			
			alert("로그인이 필요한 서비스입니다")
			return
			
		}else{
			//alert("test"); 
	 		
			/* 로그인중인 사용자가 추천을 했는지 안했는지 */
	   		if(${mylike}){
				var a=confirm("추천을 취소하시겠습니까?");
			}else{
				var b=confirm("게시글을 추천하시겠습니까?");
			} 
			
	 		if(a){
	 			dellike()
			}
			if(b){
				addlike()
				
			}    
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
	
	//처음에 안보이게
	$(".replyComment").hide()
})

function addlike() {
	
	var myid='<%=(String)session.getAttribute("myid") %>';
	var vo='{"bnum":"'+${dto.bnum}+'","myid":"'+myid+'"}';
	//alert(vo);

		/* ajax로 likeuser에서 사용자 추가*/
	    $.ajax({
	        type : "post",
	        url : "/board/likeAdd",
	        contentType: 'application/json',
	        dataType: "json",
	        data: vo,
	        success : function (data) {
	        	if(data){
	        		alert("해당 게시글을 추천하였습니다.")
		        	location.reload();
	        	}
	        	
	        }
	     }); 
}


function dellike() {

	var myid='<%=(String)session.getAttribute("myid") %>';
	var vo='{"bnum":"'+${dto.bnum}+'","myid":"'+myid+'"}';
	//alert(vo);
	/*ajax로 likeuser에서 사용자 제거*/
    $.ajax({
        type : "post",
        url : "/board/likeDel",
        contentType: 'application/json',
        dataType: "json",
        data: vo,
        success : function (data) {
        	if(data){
	        	alert("게시글 추천을 취소하였습니다.")
	        	location.reload();
        	}
        }
     }); 
}

function golist(){
	
	var type='${type }';
	var currentPage=${currentPage};
	
	
	if(type=="home") {
		location.href="/board/shareTripHome";
	}else if(type=="best") {
		location.href="/board/bestBoard?currentPage="+currentPage;
	}else{
		location.href="/board/bulletinBoard?currentPage="+currentPage;
	}
	
	
	
	
}
function reply(cnum,bwriter,e) {
	//alert(cnum)=
	var myid='<%=(String)session.getAttribute("myid") %>';
	var loginok='<%=(String)session.getAttribute("loginok") %>';

	var rehtml="";
	
	//ajax-답글 목록
	var vo={"cnum":cnum};
     $.ajax({
        type : "get",
        url : "/board/getReply",
        contentType: 'application/json; charset=UTF-8',
        async:false,
        dataType: "json",
        data: vo,
        success : function (data) {
        	//alert(data)
        	
        	if(data.length>0){
             	$(data).each(function(){
    				//alert(this.content + " " + this.cnum + " " + this.renum);
    				
    				var rewriter=this.cwriter.substring(0,this.cwriter.length-2);
            		rehtml+="<span class='writer-id'>"+rewriter+"**</span>&nbsp;";
            		
                    if (this.cwriter==bwriter) {
                    	rehtml+="<span class='boardowner-writer'>작성자</span>";
                    }
                    
            		var date=moment(this.writeday).format("YYYY-MM-DD HH:mm");
            		rehtml+="<span class='comment-day'>"+date+"</span>";

            		if (this.cwriter==myid && loginok=='yes') {
                    	rehtml+="<span class='comment-del' onclick='deleteComment("+this.cnum+")'>삭제</span>";
                    }
            		rehtml+="<br><span class='comment-content'>"+this.content+"</span><br>";
            		rehtml+="<hr class='comment-underline'>";
    			});	
        	}else{
        		rehtml+="<br><span class='comment-content'>등록된 답글이 없습니다</span><br>";
        		rehtml+="<hr class='comment-underline'>";
        	}
        	
        }
     });  
	
	var loginok='<%=(String)session.getAttribute("loginok") %>';
	//alert(loginok)
	<!-- 답글작성 form-로그인 일때만 -->
	if(loginok=="yes"){
		rehtml+="<form action='/comments/insert' method='post'>";
 		rehtml+="<input type='hidden' name='bnum' value='${dto.bnum }'>";
		rehtml+="<input type='hidden' name='currentPage' value='${currentPage }'>";
		rehtml+="<input type='hidden' name='type' value='${type}'>";
		rehtml+="<input type='hidden' name='renum' value='"+cnum+"'>";
		rehtml+="<span class='comment-writer'><c:out value='${fn:substring(sessionScope.myid, 0, fn:length(sessionScope.myid) - 2)}'/>**</span>";
		rehtml+="<button type='submit' class='comment-insertbtn'>등록</button><br>";
		rehtml+="<input type='text' name='content' class='commentbox reply' required='required'>";
		rehtml+="</form>";
		//alert(loginok)
	}
	$(e).siblings("div.replyComment").html(rehtml)
	$(e).siblings("div.replyComment").toggle()
	

}

function deleteComment(cnum) {
	
	var ans=confirm("댓글을 삭제하시겠습니까?")
	
	if(ans){
		var type='${type}';
		var vo='{"bnum":"'+${dto.bnum}+'","cnum":"'+cnum+'","currentPage":"'+${currentPage}+'","type":"'+type+'"}';
		//alert(vo);
		/*ajax로 likeuser에서 사용자 제거*/
	    $.ajax({
	        type : "post",
	        url : "/comments/delete",
	        contentType: 'application/json',
	        dataType: "json",
	        data: vo,
	        success : function (data) {
	        	if(data){
	        		alert("댓글을 삭제하였습니다.")
	    	        location.reload();
	        	}
		        
	        }
	     }); 
	}

} 

//댓글수정 폼으로 변경
function updateform(content,cnum,e) {
	
	//alert("test")
	
	$(e).siblings(".comment-content").hide();
	
	var currentPage=${currentPage};
	var bnum='${dto.bnum}';
	var type='${type}';
	
	var updateformMsg="";
	
	updateformMsg+='<form action="/comments/updatecom" method="post">';
	updateformMsg+='<input type="text" name="content" class="commentbox" required="required" value="'+content+'"><br>';
	updateformMsg+='<input type="hidden" name="cnum" value="'+cnum+'">';
	updateformMsg+='<input type="hidden" name="bnum" value="'+bnum+'">';
	updateformMsg+='<input type="hidden" name="currentPage" value="'+currentPage+'">';
	updateformMsg+='<input type="hidden" name="type" value="'+type+'">';
	
	updateformMsg+='<br><button type="submit" class="comment-insertbtn">수정</button>';
	
	
	updateformMsg+='</form>';
	
	$(e).siblings(".comUpdateform").html(updateformMsg);
	
} 

function delBoard(bnum,type) {
	//alert("test")
	var a=confirm("정말 게시글을 삭제하시겠습니까?")
	if(a)
		location.href="deleteboard?bnum="+bnum+"&type="+type;
}

</script>
</head>
<body>

<!-- 본문 시작 -->
<div class="boardDetailPage-main">
      
		<!-- 이미지 모달 -->
		<div class="imagemodal">
		    <div class="modalBox">
		    </div>
		</div>
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
         
        <span class="likes">추천수 ${likesCnt }</span><br>
        <!-- 로그인중인 아이디=글쓴이 아이디 -->
        <c:if test="${sessionScope.loginok=='yes' && sessionScope.myid==dto.writer}">
        	<a href="boardupdateform?bnum=${dto.bnum }"><span class="board-upd">수정 |</span></a><span class="board-del" onclick="delBoard(${dto.bnum },'${type}')"> 삭제</span>
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
	    	  <div class="commentdiv">
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
				    	<span class="comment-del" onclick="deleteComment(${cdto.cnum})">삭제 |</span><span class="comment-upd" onclick="updateform('${cdto.content }',${cdto.cnum },this)"> 수정</span>
				    </c:if>
				    <div class="comUpdateform"></div>
				    <br><span class="comment-content">${cdto.content }</span><br>
				    <button type="button" class="btnreply" onclick="reply(${cdto.cnum},'${dto.writer }',this)">답글</button>
					<hr class="comment-underline">
		    	  	<!-- 답글 리스트 - 나중에 -->
					<div class="replyComment"></div>
				 </c:if>
			  </div>  
	    	</c:forEach>
      
	    </c:if>

      <!-- 댓글작성 form-로그인 일때만 -->
      <c:if test="${sessionScope.loginok=='yes' }">
	      <form action="/comments/insert" method="post">
	      	<input type="hidden" name="bnum" value="${dto.bnum }">
	      	<input type="hidden" name="renum" value="0">
	      	<input type="hidden" name="currentPage" value="${currentPage }">
	      	<input type="hidden" name="type" value="${type }">
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
      <button type="button" class="listbtn" onclick="golist()">목록</button>
    </td>
  </tr>
 </table>

</div>
<!-- 본문 끝 -->



</body>
</html>