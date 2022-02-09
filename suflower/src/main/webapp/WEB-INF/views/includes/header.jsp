<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
  <meta charset="utf-8">
  <title>Sue Flower</title>
  <link rel="stylesheet" href="../resources/css/bootstrap.css">
  <link rel="stylesheet" href="../resources/css/animate.css">
  <link rel="stylesheet" href="../resources/css/font-awesome.min.css">
  <link rel="stylesheet" href="../resources/css/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="../resources/js/jquery.min.js"></script>
  <script src="../resources/js/bootstrap.min.js"></script>
  <!-- 썸머노트 추가 -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>


<body>
<header>
  <div class="header-menu">
    <div class="container">
      <div class="row">
        <div class="col-sm-2">
          <div class="logo">
            <a href="/">
              <img src="../resources/img/logo.png" alt="">
            </a>
          </div>
        </div>
        <div class="col-sm-8">
          <nav class="navbar">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed button-toggle" data-toggle="collapse" data-target="#main-menu">
                    <span class="sr-only">Toggle navigation</span>
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
            </div>
            <div class="main-menu collapse navbar-collapse" id="main-menu">
              <ul class="nav navbar-nav">
                <li class="active"><a href="/">Home</a></li>
                <li><a href="/product/productList">꽃다발</a></li>
                <li><a href="#">소품샵</a></li>
                <li><a href="/board/blist">커뮤니티 게시판</a></li>
                <li><a href="#">카카오 문의</a></li>
				<li><a href="/board/session">세션확인</a></li>
			</ul>
            </div>
          </nav>
        </div>
        <div class="col-2 text-right">
          <ul class="service-inform">
            <li>
              <a href="#">
                <i class="fa fa-search" aria-hidden="true"></i>
              </a>
            </li>				
							
							<c:if test="${member ==null }">
								<li><a href="/member/login"><i
										class="fa fa-user-o  fa-2x" aria-hidden="true"></i></a></li>
							</c:if>

							<c:if test="${member != null }">
								<a href="/member/info"><i class="fa fa-user-o  fa-2x"
									aria-hidden="true"></i></a>
								<span>회원:${member.memberName}</span>
								<span>충전금액:<fmt:formatNumber
										value="${member.memberMoney}" pattern="#,##,##" />
								</span>
								<span>포인트:<fmt:formatNumber value="${member.memberMoney}"
										pattern="#,##" />
								</span>
								<a id="logout_button">로그아웃</a>
							</c:if>
							<li class="basket"><a href="#"><i
									class="fa fa-shopping-bag  fa-2x" aria-hidden="true"></i>
									<div class="basket-count">5</div></a></li>
							<li><a href="https://www.instagram.com/sueflower_/"
								target="_blank"><i class="fa fa-instagram fa-2x"
									aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
				<!-- // row -->
			</div>
			<!-- //container -->
		</div>
		<!-- //header-menu -->
	</header>
	<c:if test="${message != null }">
		<script>
		alert('${message}');
		</script>
	</c:if>
	<script>
		/* 로그아웃 버튼 작동 */
		$("#logout_button").click(function() {
			$.ajax({
				type : "POST",
				url : "/member/logout.do",
				success : function(data) {
					alert("로그아웃 성공");
					document.location.reload();
				}
			})
		})
		
	</script>

</body>
</html>