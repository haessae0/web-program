<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<html>
<head>
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main Page</title>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/layout/header.jsp"></jsp:include>
	</header>
		
		
	<img src="images/notice-board.png" style="width: 500px; height: 500px;" onclick="window.location.href='boardListPage.do'"/>
	<button type="button" onclick="window.location.href='boardAreaPage.do'">게시</button>
	<button type="button" onclick="window.location.href='boardAreaPage.do'">작성한 글 보기</button>
</body>
</html>