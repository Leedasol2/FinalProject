<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
						  
							<td><a href="detail?bnum=${best.bnum }&type=home"><span id="boardSubject">${best.subject }</span> </a></td>
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
							<td><a href="detail?bnum=${bul.bnum }&type=home"><span id="boardSubject">${bul.subject }</span></a></td>
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