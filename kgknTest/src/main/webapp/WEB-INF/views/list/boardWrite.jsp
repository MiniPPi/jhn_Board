<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${contextPath}/resources/css/write.css?ver1">
</head>
<body>


<form action="${contextPath}/list/boardWrite" method="post">
	<div class="list-main">
	    <div class="detail-list">
	        <div class="title-section">
				<div class="title-circle"></div>
				<div class="title-name">TITLE</div>
	            <input type="text" name="title" class="title-input" />
	        </div>
	        <div class="content-section">
	            <textarea class="text-area" name="content"></textarea>
	        </div>
	        <div class="backBtn">
	            <div class="btn-to-to"><input type="submit" value="등록" class="write-input"></div>
	            <div class="btn-to">
	            	<a href="${contextPath}/list/boardList?pno=1" style="color: black">글목록</a>
	            </div>
	        </div>
	    </div>
	</div>
</form>



</body>
</html>