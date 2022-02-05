<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Sueflower</title>

<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<!-- Custom fonts for this template-->
<link href="../resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">
<link href="../resources/css/login.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">로그인</h1>
									</div>
									<form class="user" id="login_form" method="post">
										<div class="form-group">
											<input type="text" class="form-control form-control-user"
												id="exampleInputId" aria-describedby="emailHelp"
												placeholder="아이디 입력" name="memberId">
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user"
												id="exampleInputPassword" placeholder="비밀번호 입력"
												name="memberPassword">
										</div>
										<div class="form-group">
											<div class="custom-control custom-checkbox small">
												<input type="checkbox" class="custom-control-input"
													id="customCheck"> <label
													class="custom-control-label" for="customCheck">아이디
													저장 </label>
											</div>
											<c:if test="${result == 0}">
												<div class="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
											</c:if>
										</div>
										<input type="submit" class="btn btn-primary btn-user btn-block login_button" value="로그인">
										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
										<hr>
										<a href="index.html" class="btn btn-google btn-user btn-block">
											<i class="fab fa-google fa-fw"></i> 카카오톡 간편 로그인
										</a> <a href="index.html"
											class="btn btn-facebook btn-user btn-block"> <i
											class="fab fa-facebook-f fa-fw"></i> 네이버 간편 로그인
										</a>
									</form>
									<hr>
									<div class="text-center">
										<a class="small" href="forgot-password.html">비밀번호 찾기</a>
									</div>
									<div class="text-center">
										<a class="small" href="register">회원가입</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>
	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="../resources/js/sb-admin-2.min.js"></script>
	<script>
		/* 로그인 버튼 클릭 메서드 */
		$('.login_button').click(function() {
			/* 로그인 메서드 서버 요청 */
			$('#login_form').attr("action", "/member/login");
			$('#login_form').submit();
		});
	</script>

</body>

</html>