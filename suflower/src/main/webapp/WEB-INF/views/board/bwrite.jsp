<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script type="text/javascript" src="../resource/smartEditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>
	<%@ include file="../includes/header.jsp"%>
	<form action="/board/bwrite" method="post">
		<div style="border:"0}>
			<div class="input_wrap">
				<label>Title</label> <input name="boardTitle">
			</div>
			<div id="summernote"></div>
			<textarea class="form-control" name="boardContent" id="boardContent"
				style="width: 90%; height: 500px;"></textarea>
		</div>
	
		<button class="btn">전송</button>
		<input name="boardWriter" value="${member.memberId}" type="hidden" />
	</form>
	<table>
		<tr>
			<th>내용</th>
			<td><textarea id="popContent" name="popContent" cols="108"
					rows="15"></textarea></td>
		</tr>
		</table>
	<%@ include file="../includes/footer.jsp"%>

</body>
<script type="text/javascript">
var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef : oEditors,
		elPlaceHolder : "popContent", //textarea ID
		sSkinURI : "../resource/smartEditor/SmartEditor2Skin.html", //skin경로
		fCreator : "createSEditor2",
	});
</script>
</html>
