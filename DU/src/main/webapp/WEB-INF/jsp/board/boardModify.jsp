<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	Date nowTime = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE html>
<html lang="UTF-8">
<style type="text/css">
/* banner */
.banner {
	position: relative;
	width: 340px;
	height: 210px;
	top: 50px;
	margin: 0 auto;
	padding: 0;
	overflow: hidden;
}

.banner ul {
	position: absolute;
	margin: 0px;
	padding: 0;
	list-style: none;
}

.banner ul li {
	float: left;
	width: 340px;
	height: 210px;
	margin: 0;
	padding: 0;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>보노 마켓</title>

<!-- Custom fonts for this template -->
<link
	href="${pageContext.request.contextPath}/js/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/js/css/sb-admin-2.min.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="${pageContext.request.contextPath}/js/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				onclick="window.location.href='${pageContext.request.contextPath }/mainPage.do'">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">보노 마켓</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item"><a class="nav-link"
				onclick="window.location.href='${pageContext.request.contextPath }/mainPage.do'">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>메인화면</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">메인 메뉴</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>게시판</span>
			</a>
				<div id="collapsePages" class="collapse"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">게시판</h6>
						<a class="collapse-item"
							onclick="window.location.href='boardListPage.do'">전체 판매 글</a> <a
							class="collapse-item"
							onclick="window.location.href='boardAreaPage.do'">회원 지역별 판매
							제품</a> <a class="collapse-item"
							onclick="window.location.href='boardTodayPage.do'">오늘 추가 된 제품</a>
						<a class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">내가 판매하는 제품</a>
					</div>

				</div>
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>지역 별 게시판</span>
			</a>
				<div id="collapsePages" class="collapse"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">게시판</h6>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=01'">서울특별시</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=02'">부산광역시</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=03'">대구광역시</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=04'">인천광역시</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=05'">광주광역시</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=06'">대전광역시</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=07'">울산광역시</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=08'">세종특별자치시</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=09'">경기도</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=10'">강원도</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=11'">충청북도</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=12'">충청남도</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=13'">전라북도</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=14'">전라남도</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=15'">경상북도</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=16'">경상남도</a>
						<a class="collapse-item"
							onclick="window.location.href='${pageContext.request.contextPath}/boardCountryPage.do?areacd=17'">제주특별자치도</a>
					</div>
				</div>
			<li class="nav-item active"><a class="nav-link"
				onclick="window.location.href='boardWritePage.do'"> <i
					class="fas fa-fw fa-table"></i> <span>판매 글 작성</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<form class="form-inline">
						<button id="sidebarToggleTop"
							class="btn btn-link d-md-none rounded-circle mr-3">
							<i class="fa fa-bars"></i>
						</button>
					</form>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2" id="searchTitle"
								value="<c:out value='${title }'></c:out>">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button" id="searchBtn"
									onclick="window.location.href='boardListPage.do'">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small"> <c:out
										value="${USER.name}" />
							</span> <img class="img-profile rounded-circle"
								src="${pageContext.request.contextPath}/js/img/undraw_profile.svg">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item"
									onclick="window.location.href='userInfoConfirmPage.do'"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a>
								<c:if test="${USER.userId == 'admin' }">
									<a class="dropdown-item" href="#"> <i
										class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
										Settings
									</a>
									<a class="dropdown-item" href="#"> <i
										class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
										Activity Log
									</a>
								</c:if>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item"
									onclick="window.location.href='logout.do'" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">판매 게시판</h1>
					<p class="mb-4">상품 판매를 위한 게시물 입니다.</p>

					<!-- list -->
					<form action="${pageContext.request.contextPath }/boardModify.do"
						method="post" id="modifyForm" enctype="multipart/form-data">
						<input type="hidden" name="idx" value="${board.idx }" /> <input
							type="hidden" name="attIdx" value="${board.attIdx }" />

						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<div class="col-sm-6 mb-3 mb-sm-0">
									<input type="text" class="form-control form-control-user"
										name="title" value="${board.title }" required
										placeholder="Enter the Title">
								</div>
							</div>
							<div class="card-body">
								<div class="text-center">
									<textarea class="form-control form-control-user" name="content"
										required placeholder="Enter the Content" required><c:out
											value="${board.content }"></c:out></textarea>
								</div>
								<hr class="sidebar-divider d-none d-md-block">
								<div>
									<a>첨부파일</a><input type="file" name="attFile" />

								</div>
								<div>
									<a>${board.attFilename }</a>
								</div>
								<div>
									<input type="radio" name="handleType" value="fix"
										checked="checked" />
									<c:out value="고정" />
									<input type="radio" name="handleType" value="chg" />
									<c:out value="변경" />
									<input type="radio" name="handleType" value="del" />
									<c:out value="삭제" />
								</div>

							</div>
							<button type="submit" class="btn btn-primary">등록</button>


						</div>
					</form>
					<!-- Footer -->
					<footer class="sticky-footer bg-white">
						<div class="container my-auto">
							<div class="copyright text-center my-auto">
								<span>Copyright &copy; Bono Market 2021</span>
							</div>
						</div>
					</footer>
					<!-- End of Footer -->

				</div>
				<!-- End of Content Wrapper -->

			</div>
			<!-- End of Page Wrapper -->

			<!-- Scroll to Top Button-->
			<a class="scroll-to-top rounded" href="#page-top"> <i
				class="fas fa-angle-up"></i>
			</a>

			<!-- Logout Modal-->
			<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Ready to
								Leave?</h5>
							<button class="close" type="button" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body">Select "Logout" below if you are
							ready to end your current session.</div>
						<div class="modal-footer">
							<button class="btn btn-secondary" type="button"
								data-dismiss="modal">Cancel</button>
							<a class="btn btn-primary"
								onclick="window.location.href='logout.do'">Logout</a>
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

			<!-- Page level plugins -->
			<script
				src="${pageContext.request.contextPath}/js/vendor/datatables/jquery.dataTables.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/js/vendor/datatables/dataTables.bootstrap4.min.js"></script>

			<!-- Page level custom scripts -->
			<script
				src="${pageContext.request.contextPath}/js/js/demo/datatables-demo.js"></script>
</body>

</html>
