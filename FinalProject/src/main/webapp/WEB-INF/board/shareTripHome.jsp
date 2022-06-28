<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 현재날짜 -->
<c:set var="today" value="<%=new java.util.Date()%>" />
<!-- 최신글 현재날짜+시간 -->
<c:set var="yesterday"><fmt:formatDate value="<%=new Date(new Date().getTime() - 60*60*24*1000) %>" pattern="yyyy-MM-dd hh:mm:ss" /></c:set>



<title>Insert title here</title>
</head>
<body>

	<!-- 본문 시작 -->
	<div class="shareTripHome">

		
		<!-- 베너 -->
		<img src="${root }/image/asset/여행공유배너.png" class="shareTripBanner">
		
		<!-- 게시글 미리보기 -->
		<div class="boardpreview">
			<table id="">
				<caption>
					<div><span class="bestboard">BEST&nbsp;</span>게시판</div>
				</caption>
				<tbody>
					<c:forEach var="best" items="${bestlist }">
						<tr>
						  
							<td>
								<a href="detail?bnum=${best.bnum }&type=home"><span id="boardSubject">${best.subject }</span> </a>
									<c:if test="${best.photo!='no' }">
										<span class="photo">&nbsp;<img src="${root }/image/asset/첨부이미지아이콘.png"></span>
									</c:if>
									<!-- 현재 시간으로부터 하루이내에 쓰인 글인지 검사 -->
									<c:if test="${best.writeday>yesterday }">
										<span><img src="${root }/image/asset/새글아이콘.png"></span>
									<c:if test="${best.commentCnt>0 }">
										<span class="cntComments">&nbsp;[${best.commentCnt }]</span>
									</c:if>
									</c:if>
							</td>
							<td class="boardId"><span><c:out value="${fn:substring(best.writer, 0, fn:length(best.writer) - 2)}"/>**</span></td>
						 
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<table id="">
				<caption>
					<div>자유게시판</div>
				</caption>
				<tbody>
					<c:forEach var="bul" items="${bullist }">
						<tr>
							<td>
								<a href="detail?bnum=${bul.bnum }&type=home"><span id="boardSubject">${bul.subject }</span></a>
									<c:if test="${bul.photo!='no' }">
										<span class="photo">&nbsp;<img src="${root }/image/asset/첨부이미지아이콘.png"></span>
									</c:if>
									
									<c:if test="${bul.commentCnt>0 }">
										<span class="cntComments">[${bul.commentCnt }]</span>
									</c:if>
									
									<!-- 현재 시간으로부터 하루이내에 쓰인 글인지 검사 -->
									<c:if test="${bul.writeday>yesterday }">
										<span><img src="${root }/image/asset/새글아이콘.png"></span>
									</c:if>
								</td>
							<td class="boardId"><span><c:out value="${fn:substring(bul.writer, 0, fn:length(bul.writer) - 2)}"/>**</span></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	
	</div>
	<!-- 본문 끝 -->

</body>
</html>