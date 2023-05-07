<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${contextPath}/resources/css/list.css">
</head>
<body>
	<hr size="20" color="white">
	<hr size="20" color="white">
	<form action="${contextPath}/list/boardList" method="get">
		<div class ="list-main">
			<div class="button-section">
				<a href="${contextPath}/list/boardWrite" style="color: black;"><div class="write-button">글쓰기</div></a>
			</div>
			<div class="list-section">
				<div class="list-all">
					<div class="list-title">
						<div class="no">
							<div class="name3">NO</div>
						</div>
						<div class="id">
							<div class="name4">ID</div>
						</div>
						<div class="title">
							<div class="name5">TITLE</div>
						</div>
						<div class="date">
							<div class="name6">DATE</div>
						</div>
					</div>
		            <c:forEach var="list" items="${list}" >
			        	<div class="boardList">
			            	<div class="no1" name="no">${list.no}</div>
			                <div class="id1" name="id">${list.id}</div>
			                <a href="${contextPath}/list/boardDetail?no=${list.no}" style="color: black;"><div class="title1" name="title">${list.title}</div></a>
			                <div class="date1" name="enrollDate">${list.enrollDate}</div>
			            </div>
			        </c:forEach>
			    </div>
			    <div class="page-section">
		        	<div class="page-board">
						<c:if test="${pv.startPage != 1}">
			                <div class="paging-btn" id="prev-btn">
			                  <a href="${contextPath}/list/boardList?pno=${i}">이전</a>
			                </div>
			            </c:if>
			              <c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
			                <div class="paging-btn" id="${i}">
			                  <a href="${contextPath}/list/boardList?pno=${i}">${i}</a>
			                </div>
			              </c:forEach>
			            <c:if test="${pv.endPage < pv.maxPage}">
			              <div class="paging-btn" id="next-btn">
			                <a href="${contextPath}/list/boardList?pno=${i}">다음</a>
			              </div>
			            </c:if>
			   		</div>
           		</div>
			</div>		
	   </div>
	</form>

        


 
</body>
</html>