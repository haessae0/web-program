<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<div style="display: flex; border-bottom: 1px solid black">

			<div class="leftBtnDiv">
				<img src="images/logo.png"
					onclick="window.location.href='mainPage.do'" />
			</div>

			<h1>
				[
				<c:out value="${USER.name}"></c:out>
				]님 반갑습니다.
			</h1>

			<div class="rightBtnDiv">
				<button type="button" class="btn btn-primary"
					style="margin-rigth: 3px;"
					onclick="window.location.href='userInfoConfirm.do'">회원정보</button>

				<button type="button" class="btn btn-secondary"
					onclick="window.location.href='logout.do'">로그아웃</button>
			</div>
		</div>
	</header>
</body>
</html>