<%@ page language="java"
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
						<textarea name="boardContent" class="form-control" rows="2" readonly="readonly"><c:out value="${pageInfo.boardContent}" /> </textarea>
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
				type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
			<input type="hidden" name="amount"
				value='<c:out value="${cri.amount}"/>'> <input type="hidden"
				name="keyword" value="${cri.keyword }">
		</form>
	</div>
	
	<!-- 댓글 리스트 부분 -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<i class="fa fa-comments fa-fw"></i>댓글 목록
				</div>
				<div class="panel-body">
					<ul class="chat">
						<li class="left clearfix" data-replyNo='12'>
							<div>
								<div class="header">
									<strong class="primary-font">user</strong> 
									<small class="pull-right text-muted">2018-01-01</small>
								</div>
								<p>reply</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 댓글 등록 -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<c:if test="${member.memberId==null}">
				<div class="panel-heading">
						<i class="fa fa-comments fa-fw"></i> 로그인 후 이용해주세요
					<button id="addReplyBtn" class="btn btn-primary btn-xs pull-right">댓글 등록</button>
						<input id="InputReplyer" type="hidden" value="${member.memberId}"/>
				</div>
				<div class="panel-body">
						<textarea id="InputReplyContent" class="form-control" rows="2" placeholder="로그인 후 이용해주세요" readonly="readonly"></textarea>
				</div>
				</c:if>
				
				<c:if test="${member.memberId!=null}">
				<div class="panel-heading">
					<button id="addReplyBtn" class="btn btn-primary btn-xs pull-right">댓글 등록</button>
						<i class="fa fa-comments fa-fw"></i>${member.memberId}
						<input id="InputReplyer" type="hidden" value="${member.memberId}"/>
				</div>
				<div class="panel-body">
						<textarea id="InputReplyContent" class="form-control" rows="2" placeholder="댓글을 입력하세요"></textarea>
				</div>
				</c:if>
			</div>
		</div>
	</div>
	
	<%@ include file="../includes/footer.jsp"%>

	<!-- 스크립트부분 -->
	<script type="text/javascript" src="/resources/js/replyjs/reply.js"></script>
	<script type="text/javascript">
		var boardNoValue='<c:out value="${pageInfo.boardNo}"/>';
		replyService.add({boardNo:boardNoValue,pageNum:1},function(list){
			for(var i=0 , len=list.length || 0; i<len; i++){
				console.log(list[i]);
			}
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
		
		$(".chat").on("click",function(e){
			var replyNo=$(this).data("replyNo");
			console.log(replyNo);
		});
		
		//댓글 추가버튼 
		 $("#addReplyBtn").on("click",function(e){
			 console.log($("#InputReplyContent").val())
			 console.log($("#InputReplyer").val())
			var replyContent = {
					replyContent : $("#InputReplyContent").val(),
					replyWriter: $("#InputReplyer").val(),
					boardNo:boardNoValue
					};// replyContent
					replyService.add(replyContent,function(result){
						alert("댓글 작성 완료");
						showList(1);
						location.reload();
					});
		});	  
		
		$(document).ready(function() {
			
			var boardNoValue='<c:out value="${pageInfo.boardNo}"/>';
			var replyUL=$(".chat");
			var operForm = $("#operForm");
		

			$("button[data-oper='modify']").on("click", function(e) {
				operForm.attr("action", "/board/modify").submit();
			});

			/* 댓글 리스트 */
			showList(1);
			function showList(pageNum){
				replyService.getList({boardNo:boardNoValue,pageNum:pageNum||1},function(list){
					var str="";
					if(list==null || list.length==0){
						replyUL.html("");
						return;
					}
					for (var i=0,len =list.length ||0 ; i<len; i++){
						str+="<li class='left clearfix' data-replyNo='"+list[i].replyNo+"'>";
						str+="<div><div class='header'><strong class='primary-font'>"+list[i].replyWriter+"</strong>";
						str+="<small class='pull-right text-muted'>"+list[i].replyDate+"</small></div>";
						str+="<p>"+list[i].replyContent+"</p></div></li>";
					}
					replyUL.html(str);
				}); // endfunction
			} // end showList
			
			
		}); // ready function
	</script>
</body>
</html>