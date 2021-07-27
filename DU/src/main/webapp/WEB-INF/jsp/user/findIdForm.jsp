<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>보노 마켓 - 아이디 찾기</title>

<!-- Custom fonts for this template-->
<link
	href="${pageContext.request.contextPath}/js/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="${pageContext.request.contextPath}/js/css/sb-admin-2.min.css"
	rel="stylesheet">

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
							<div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-2">아이디 찾기</h1>
										<p class="mb-4">아이디를 찾기 위해 본인이 가입 시 사용한 이메일을 입력해주시기 바랍니다.</p>
									</div>
									<form action="findId.do" method="post" class="user">
										<div class="form-group">
											<input type="email" class="form-control form-control-user"
												id="email" name="email" required
												aria-describedby="emailHelp"
												placeholder="Enter Email Address...">
										</div>
										<button type="submit"
											class="btn btn-primary btn-user btn-block">아이디 찾기</button>
									</form>
									<hr>
									<div class="text-center">
										<a class="small"
											onclick="window.location.href='signUpPage.do'">회원가입</a>
									</div>
									<div class="text-center">
										<a class="small" onclick="window.location.href='loginPage.do'">이미
											회원이시라면 로그인 하러 가기!</a>
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
	<script
		src="${pageContext.request.contextPath}/js/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${pageContext.request.contextPath}/js/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script
		src="${pageContext.request.contextPath}/js/js/sb-admin-2.min.js"></script>

</body>

</html>