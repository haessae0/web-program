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
							onclick="window.location.href='area/01.jsp'">서울특별시</a> <a
							class="collapse-item"
							onclick="window.location.href='boardAreaPage.do'">부산광역시</a> <a
							class="collapse-item"
							onclick="window.location.href='boardTodayPage.do'">대구광역시</a> <a
							class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">인천광역시</a> <a
							class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">광주광역시</a> <a
							class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">대전광역시</a> <a
							class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">울산광역시</a> <a
							class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">세종특별자치시</a> <a
							class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">경기도</a> <a
							class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">강원도</a> <a
							class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">충청북도</a> <a
							class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">충청남도</a> <a
							class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">전라북도</a> <a
							class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">전라남도</a> <a
							class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">경상북도</a> <a
							class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">경상남도</a> <a
							class="collapse-item"
							onclick="window.location.href='boardMyPage.do'">제주특별자치도</a>
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
	</div>
</body>
</html>