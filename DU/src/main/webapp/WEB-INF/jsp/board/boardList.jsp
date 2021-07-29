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
								<button class="btn btn-primary" type="button" id="searchBtn">
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
								class="mr-2 d-none d-lg-inline text-gray-600 small"><c:out
										value="${USER.name}" /></span> <img
								class="img-profile rounded-circle"
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

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">판매 게시판</h1>
					<p class="mb-4">상품 판매를 위한 게시물 입니다.</p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">판매 상품</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>작성자</th>
											<th>거주지</th>
											<th>작성일자</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${boardList}" var="item" varStatus="status">
											<tr ondblclick="trDblClick('${item.idx}');">
												<td><c:out
														value="${status.count + pagination.startList}" /></td>
												<td><c:out value="${item.title}" /></td>
												<td><c:out value="${item.writerName}" />[<c:out
														value="${item.writerId}" />]</td>
												<td><c:out value="${item.areaNm}" /></td>
												<td><c:out value="${item.registDate}" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

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
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
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
	<script>
		window.onload = function() {
			var searchTitle = document.getElementById("searchTitle");
			var searchBtn = document.getElementById("searchBtn");

			searchTitle.addEventListener("keydown", function(event) {
				if (event.keyCode === 13) {
					searchBtn.click();
				}
			})

			searchBtn.onclick = function() {
				// 			var tr = document.querySelectorAll("#dataList tbody tr");

				// 			for(var item of tr){
				// 				var title = item.getElementsByTagName('td')[1].innerHTML;

				// 				if(title.includes(searchTitle.value)){
				// 					item.style.display = "";
				// 				} else {
				// 					item.style.display = "none";
				// 				}
				// 			}
				var url = "${url}?title=" + searchTitle.value;

				location.href = url;
			}
		}
/* 
		//이전 버튼 이벤트
		function fn_prev(page, range, rangeSize) {
			var page = ((range - 2) * rangeSize) + 1;
			var range = range - 1;

			var url = "${url}?page=" + page;
			url = url + "&range=" + range;
			url = url + "&title=" + searchTitle.value;

			location.href = url;
			console.log(url);
		}

		//페이지 번호 클릭 이벤트
		function fn_pagination(page, range, rangeSize) {
			var url = "${url}?page=" + page;
			url = url + "&range=" + range;
			url = url + "&title=" + searchTitle.value;


			location.href = url;
		}

		// 다음 버튼 이벤트
		function fn_next(page, range, rangeSize) {
			var page = parseInt((range * rangeSize)) + 1;
			var range = parseInt(range) + 1;

			var url = "${url}?page=" + page;
			url = url + "&range=" + range;
			url = url + "&title=" + searchTitle.value;


			location.href = url;
		}
		function trDblClick(idx) {
			var url = "boardInfoPage/" + idx + ".do"

			location.href = url;
		} */
	</script>
</body>

</html>