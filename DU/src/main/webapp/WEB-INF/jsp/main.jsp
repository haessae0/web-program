<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
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
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
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

				<div class="banner">
					<ul>
						<li><img class="img-fluid px-3 px-sm-4 mt-3 mb-4" width="340" height="210px"
							src="${pageContext.request.contextPath}/js/img/main_event_banner.png"
							alt="..." onclick="window.location.href='boardWritePage.do'"
							></li>
						<li><img
							class="img-fluid px-3 px-sm-4 mt-3 mb-4" width="340" height="210px"
							src="${pageContext.request.contextPath}/js/img/main_event_banner.png"
							alt="..."
							></li>
						<li><img
							class="img-fluid px-3 px-sm-4 mt-3 mb-4" width="340" height="210px"
							src="${pageContext.request.contextPath}/js/img/main_event_banner.png"
							alt="..."
							></li>
					</ul>
				</div>


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
					var url = "boardListPage.do";
					url = url + "?title=" + searchTitle.value;

					location.href = url;
				}
			}

			//이전 버튼 이벤트
			function fn_prev(page, range, rangeSize) {
				var page = ((range - 2) * rangeSize) + 1;
				var range = range - 1;

				var url = "boardListPage.do";
				url = url + "?page=" + page;
				url = url + "&range=" + range;
				url = url + "&title=" + searchTitle.value;

				location.href = url;
			}

			//페이지 번호 클릭 이벤트
			function fn_pagination(page, range, rangeSize) {
				var url = "boardListPage.do";
				url = url + "?page=" + page;
				url = url + "&range=" + range;
				url = url + "&title=" + searchTitle.value;

				location.href = url;
			}

			// 다음 버튼 이벤트
			function fn_next(page, range, rangeSize) {
				var page = parseInt((range * rangeSize)) + 1;
				var range = parseInt(range) + 1;

				var url = "boardListPage.do";
				url = url + "?page=" + page;
				url = url + "&range=" + range;
				url = url + "&title=" + searchTitle.value;

				location.href = url;
			}
			function trDblClick(idx) {
				var url = "boardInfoPage/" + idx + ".do"

				location.href = url;
			}
		</script>
		<script type="text/javascript">
			$(document)
					.ready(
							function() {
								var $banner = $(".banner").find("ul");

								var $bannerWidth = $banner.children()
										.outerWidth();//이미지의 폭
								var $bannerHeight = $banner.children()
										.outerHeight(); // 높이
								var $length = $banner.children().length;//이미지의 갯수
								var rollingId;

								//정해진 초마다 함수 실행
								rollingId = setInterval(function() {
									rollingStart();
								}, 3000);//다음 이미지로 롤링 애니메이션 할 시간차

								function rollingStart() {
									$banner.css("width", $bannerWidth * $length
											+ "px");
									$banner.css("height", $bannerHeight + "px");
									//alert(bannerHeight);
									//배너의 좌측 위치를 옮겨 준다.
									$banner.animate({
										left : -$bannerWidth + "px"
									}, 1500, function() { //숫자는 롤링 진행되는 시간이다.
										//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
										$(this).append(
												"<li>"
														+ $(this).find(
																"li:first")
																.html()
														+ "</li>");
										//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
										$(this).find("li:first").remove();
										//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
										$(this).css("left", 0);
										//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
									});
								}
							});
		</script>
</body>

</html>