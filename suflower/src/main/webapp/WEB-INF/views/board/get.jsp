<%@ page session="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<Title>Insert boardTitle here</Title>
<script type="text/javascript" crossorigin="anonymous"
	src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=">
	
</script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<style>
</style>
</head>
<body>
	<%@ include file="../includes/header.jsp"%>
	<div class="text-center"
		style="padding-left: 60px; padding-right: 60px; padding-bottom: 40px; padding-top: 40px">
		<h3>
			<c:out value="${pageInfo.boardTitle}" />
		</h3>
		<h5 class="bi-person-circle me-1">
		<c:out value="${pageInfo.boardWriter}" />
		<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.boardRegDate}" />
		</h5>
		<h5></h5>
		<hr>
		<div style="font-size: 20px" class="input_wrap">
			<textarea rows="3" name="boardContent" readonly="readonly"><c:out
					value="${pageInfo.boardContent}" /></textarea>
		</div>
		<br>
		<hr>

		<div class="btn_wrap">
			<a class="btn" id="blist_btn">목록 페이지</a> <a class="btn"
				id="modify_btn">수정</a>
		</div>

		<form id="infoForm" action="/board/modify" method="get">
			<input type="hidden" id="boardNo" name="boardNo"
				value='<c:out value="${pageInfo.boardNo}"/>'> <input
				`
			type="hidden" name="pageNum"
				value='<c:out value="${cri.pageNum}"/>'> <input
				type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
			<input type="hidden" name="keyword" value="${cri.keyword }">
		</form>
	</div>
	<%@ include file="../includes/footer.jsp"%>

	<!-- 스크립트부분 -->
	<script type="text/javascript" src="/resources/js/replyjs/reply.js"></script>
	<script type="text/javascript">
		console.log("============");
		console.log("JS Test");
		var boardNoValue = '<c:out value="${board.boardNo}"/>';
		
		replyService.getList({boardNo:boardNoValue,pageNum:1},function(list){
			for(var i=0 , len=list.length || 0; i<len; i++){
				console.log(list[i]);
			}
		});

		$(document).ready(function() {
			console.log(replyService);

			var operForm = $("#operForm");

			$("button[data-oper='modify']").on("click", function(e) {
				operForm.attr("action", "/board/modify").submit();
			});
		});

		let form = $("#infoForm");
		let mform = $("#modifyForm");
		//목록으로 이동
		$("#blist_btn").on("click", function(e) {
			form.find("#boardNo").remove();
			form.attr("action", "/board/blist");
			form.submit();
		});
		// 수정페이지로 이동
		$("#modify_btn").on("click", function(e) {
			form.attr("action", "/board/modify");
			form.submit();
		});
	</script>
</body>
</html>