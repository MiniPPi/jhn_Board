<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/join.css">
</head>
<body>
	
	
	<form action="${contextPath}/member/join" method="post">
		<div class="join-main">
			<div class="id-section">
				<div class="id">ID</div>
				<div class="id-input"><input type="text" class="id-input2" name="id"></div>
			</div>
			<div class="pwd-section">
				<div class="pwd">PWD</div>
				<div class="pwd-input"><input type="password" class="pwd-input2" name="pwd"></div>
			</div>
			<div class="btn-to-join">
				<div class="btn"><input type="submit"  class="btn-join" value="JOIN"></div>
			</div>
		</div>
	</form>
</body>
</html>