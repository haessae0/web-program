<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>부서 정보</title>
</head>
<body>
	<table class="table table-dark table-striped">
		<thead>
			<tr>
				<th>부서코드</th>
				<th>부서명</th>
				<th>추가기능</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${dept}" var="item">
				<tr>
					<td><c:out value="${item.deptCd}"></c:out></td>
					<td><c:out value="${item.deptNm}"></c:out></td>
					<td><button type="button" onclick="window.location.href='deleteDept.do?deptCd=${item.deptCd}'">삭제</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<button type="button" onclick="window.history.go(-1)">이전</button>
		<button type="button" onclick="window.location.href='deptInsertPage.do'">등록</button>
	</div>

</body>
</html>