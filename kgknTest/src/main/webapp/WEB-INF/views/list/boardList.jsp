	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/app/resources/css/list.css">
</head>
<body>

	<form action="/app/list/boardList" method="get">
		<div class ="list-main">
			<div class="button-section">
				<a href="/app/list/boardWrite"><div class="write-button"></a>
			</div>
			<div class="list-section">
				<div class="list-all">
		            <c:forEach var="item" items="${list}" >
			        	<div class="boardList">
			            	<div class="no" name="no">${list.no}</div>
			                <div class="writer" name="writer">${list.writer}</div>
			                <div class="title" name="title">${list.title}</div>
			                <div class="content" name="content">${list.content}</div>
			                <div class="date" name="enrollDate">${list.enrollDate}</div>
			            </div>
			        </c:forEach>
			    </div>
			    <div class="page-section">
		        	<div class="page-board">
						<c:if test="${pv.startPage != 1}">
			                <div class="paging-btn" id="prev-btn">
			                  <a href="/app/list/boardList?pno=${i}">이전</a>
			                </div>
			            </c:if>
			              <c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
			                <div class="paging-btn" id="${i}">
			                  <a href="/app/list/boardList?pno=${i}">${i}</a>
			                </div>
			              </c:forEach>
			            <c:if test="${pv.endPage < pv.maxPage}">
			              <div class="paging-btn" id="next-btn">
			                <a href="/app/list/boardList?pno=${i}">다음</a>
			              </div>
			            </c:if>
			   		</div>
           		</div>
			</div>		
	   </div>
	</form>

        


 
</body>
</html>