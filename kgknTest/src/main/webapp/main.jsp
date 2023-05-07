<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath }/resources/css/main.css?ver=1">
</head>
<body>
	
	<div class="main">
		<div class="square">
			<div class="small-square">
				<div class="join-sec">
					<div class="circle1"></div>
					<div class="join-part">
						<a href="${contextPath }/member/join"  style="color: black">JOIN</a>
					</div>
				</div>
				<div class="login-sec">
					<div class="circle2"></div>
					<div class="login-part">
						<a href="${contextPath }/member/login" style="color: black">LOGIN</a>
					</div>
				</div>
				<div class="list-sec">
					<div class="circle3"></div>
					<div class="list-part">
						<a href="${contextPath }/list/boardList" style="color: black">LIST</a>
					</div>
				</div>
			</div>
		</div>
		<div class="big-circle"></div>
	</div>

</body>
</html>