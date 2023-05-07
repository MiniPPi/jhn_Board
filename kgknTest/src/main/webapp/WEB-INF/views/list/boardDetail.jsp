<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${contextPath}/resources/css/boardDetail.css?ver1">
</head>
<body>

	<hr size="20" color="white">
	<hr size="20" color="white">
	<div class="list-main">
		<div class="list-top"></div>
		<div class="list-middle">
			<div class="list-detail-relatedPost">
				<c:if test = "${not empty relatedPosts }">
					<div class="relatedPost">
						<div class="related-post-name">
							<div class="post-name"></div>
							<div class="post-name-name">연관게시물</div>
						</div>
						<div class="title-name-related">
							<div class="title-name2">TITLE</div>
							<div class="title-name3">CONTENT</div>
						</div>
						<c:forEach var="items" items="${relatedPosts}" >
							<div class="title-content">
								<div class="title-related">${items.title}</div>
								<div class="content-related">${items.content}</div>
							</div>
						</c:forEach>
					</div>
				</c:if>
				<div class="detail-list">
					<div class="title-section">
						<div class="title-name">
							<div class="name1">TITLE</div>
						</div>
						<div class="title">${vo.title}</div>
						<div class="id-name">
							<div class="name2">ID</div>
						</div>
						<div class="id">${vo.id}</div>
					</div>
					<div class="content-section">${vo.content}</div>
					<div class="backBtn">
						<a href="${contextPath}/list/boardList?pno=1" style="color: black"><div class="btn-to">글목록</div></a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>