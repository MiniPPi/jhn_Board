<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">
<title>Insert title here</title>

<link rel="stylesheet" href="/app/resources/css/write.css">
</head>
<body>


<form action="/app/list/boardWrite" method="post">
	<div class="list-main">
	    <div class="detail-list">
	        <div class="title-section">
	            <input type="text" name="title" class="title-input" />
	        </div>
	        <div class="content-section">
	            <textarea class="summernote" name="content"></textarea>
	        </div>
	        <div class="backBtn">
	            <div class="btn-to"><input type="submit" value="등록" class="faqWrite-input"></div>
	            <a href="/app/faq/faqList?p=1&cateNo=0"><div class="btn-to">글목록</div></a>
	        </div>
	    </div>
	</div>
</form>


<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- 서머노트 로딩-->
    <script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>
        $('.summernote').summernote({
            height: 350,
            placeholder: '내용을 작성하세요',
            lang: "ko-KR",
            disableResizeEditor: true
        });
    </script>

</body>
</html>