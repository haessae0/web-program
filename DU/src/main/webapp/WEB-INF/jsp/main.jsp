<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap/bootstrap.bundle.min.js"></script>

<style>
header {
	margin-bottom: 10px;
}

h1 {
	margin: auto;
}

.rightBtnDiv {
	display: flex;
	float: right;
	width: 13%;
}

.leftBtnDiv {
	display: flex;
	float: left;
	width: 6%;
}

img {
	margin-left: auto;
	margin-right: auto;
	display: block;
}
</style>
<title>Main Page</title>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/layout/header.jsp"></jsp:include>
	</header>
	<section>

		<img src="images/notice-board.png"
			onclick="window.location.href='boardListPage.do'" />
	</section>
</body>
</html>