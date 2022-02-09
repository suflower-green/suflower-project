<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<link rel="stylesheet" href="/resources/css/info.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>

<%@ include file="../includes/header.jsp"%>
<body>
	<div class="info">
<!-- 		<div class="sidebar"> -->
<!-- 			<ul class="sidebar_nav"> -->
<!-- 				<li class="sidebar_blind"><a href="#"><span>회원정보</span> </a></li> -->
<!-- 				<li class="sidebar_blind"><a href="/member/update"> <span>정보수정</span> -->
<!-- 				</a></li> -->
<!-- 				<li class="sidebar_blind"><a href="#"><span>포인트</span> </a></li> -->
<!-- 				<li class="sidebar_blind"><a href="#"><span>회원탈퇴</span> </a></li> -->
<!-- 				<li class="sidebar_blind"><a href="/"><span>홈으로</span> </a></li> -->

<!-- 			</ul> -->
<!-- 		</div> -->

		<div class="info_tbform">
			<table border="1" width="800px" height="500px" class="info_tb">
			<%@ include file="../includes/sidebar.jsp"%>
				<tr>
					<td>아이디</td>
					<td>${member.memberId}</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>${member.memberName}</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>${member.memberMail}</td>
				</tr>
				<tr>
					<td>핸드폰 번호</td>
					<td>${member.memberPhoneNum}</td>
				</tr>
				<tr>
					<td>우편 번호</td>
					<td>${member.memberAddr1}</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>${member.memberAddr2}</td>
				</tr>
				<tr>
					<td>상세 주소</td>
					<td>${member.memberAddr3}</td>
				</tr>
				<tr>
					<td>가입일자</td>
					<td>${member.memberRegDate}</td>
				</tr>
				<tr>
					<td>충전금액</td>
					<td>${member.memberMoney}</td>
				</tr>
				<tr>
					<td>포인트</td>
					<td>${member.memberPoint}</td>
				</tr>
			</table>
		</div>
	</div>
</body>

<%@ include file="../includes/footer.jsp"%>

</html>