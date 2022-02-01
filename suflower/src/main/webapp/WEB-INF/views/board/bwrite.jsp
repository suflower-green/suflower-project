<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../includes/header.jsp"%>
	<form action="/board/bwrite" method="post">
		<div style={border: 0}>
			<label>Writer</label>
			<input  name="boardWriter" value="${member.memberId}" readonly="readonly"/>
		</div>
		<div class="input_wrap">
			<label>Title</label> <input name="boardTitle">
		</div>
		<div class="input_wrap">
			<label>Content</label>
			<textarea rows="3" name="boardContent"></textarea>
		</div>
		<button class="btn"> 전송 </button>
	</form>
<a href="/">[Home]</a>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>