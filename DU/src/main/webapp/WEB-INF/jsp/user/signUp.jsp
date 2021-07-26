<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>보노 중고 마켓</title>

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

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
					<div class="col-lg-7">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">회원 가입</h1>
							</div>
							<form class="user" action="signUp.do" method="post"
								id="signUpForm">
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
											name="name" required placeholder="Name">
									</div>
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
											name="userId" required placeholder="ID">
									</div>
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="password" class="form-control form-control-user"
											name="pwd" id="pwdInput" required placeholder="Password">
									</div>
									<div class="col-sm-6">
										<input type="password" class="form-control form-control-user"
											id="pwdCheckInput" required placeholder="Repeat Password">
									</div>
								</div>
								<div class="form-group">
									<input type="email" class="form-control form-control-user"
										name="email" placeholder="Email Address">
								</div>
								<div class="mb-3">
									<label for="exampleFormControlSelect1">사는 지역</label> <select
										name="deptCd" class="form-control" required>
										<c:forEach items="${dept}" var="item">
											<option value="${item.deptCd}"><c:out
													value="${item.deptNm}" /></option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
											name="job" placeholder="Job">
									</div>
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
											name="phone" placeholder="Phone Number">
									</div>
								</div>
								<a class="btn btn-primary btn-user btn-block" id="okBtn">
									회원 가입 </a>
							</form>
							<hr>
							<div class="text-center">
								<a class="small" href="forgot-password.html">아이디/비밀번호 찾기</a>
							</div>
							<div class="text-center">
								<a class="small" onclick="window.location.href='loginPage.do'">이미 회원이시라면 로그인 하러 가기!</a>
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
<script>
	window.onload = function() {
		var okBtn = document.getElementById('okBtn');

		okBtn.onclick = function() {
			var pwd = document.getElementById("pwdInput").value;
			var pwdCheck = document.getElementById("pwdCheckInput").value;

			if (pwd == pwdCheck) {
				document.getElementById("signUpForm").submit();
			} else {
				alert("비밀번호를 확인해주세요");
			}
		}
	}
</script>

</html>