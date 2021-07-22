<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

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

#paginationBox {
	justify-content: center;
	display: flex;
}

#filterDiv {
	display: flex;
	justify-content: space-between;
}
</style>
<title>Main Page</title>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/layout/header.jsp"></jsp:include>
	</header>
	<section>
		<div id="filterDiv">
			<table>
				<tr>
					<th>제목</th>
					<td><input type="text" id="searchTitle"
						value="<c:out value='${title }'></c:out>" /></td>
					<td><button type="button" class="btn btn-primary"
							id="searchBtn">검색</button></td>
				</tr>
			</table>
			<button type="button" class="btn btn-success"
				onclick="window.location.href='boardWritePage.do'">게시글 등록</button>
		</div>

		<table id="dataList" class="table table-striped table-hover">
			<colgroup>
				<col style="width: 5%">
				<col style="width: 65%">
				<col style="width: 5%">
				<col style="width: 10%">
				<col style="width: 5%">
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록날짜</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${boardList}" var="item" varStatus="status">
					<tr ondblclick="trDblClickEvent('${item.idx}')">
						<td><c:out value="${status.count + pagination.startList}" /></td>
						<td><c:out value="${item.title}" /></td>
						<td><c:out value="${item.writerName}" /></td>
						<td><c:out value="${item.registDate}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<!-- pagination{s} -->
		<div id="paginationBox">
			<ul class="pagination">
				<c:if test="${pagination.prev}">
					<li class="page-item"><a class="page-link" href="#"
						onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
				</c:if>

				<c:forEach begin="${pagination.startPage}"
					end="${pagination.endPage}" var="idx">
					<li
						class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a
						class="page-link" href="#"
						onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">
							${idx} </a></li>
				</c:forEach>

				<c:if test="${pagination.next}">
					<li class="page-item"><a class="page-link" href="#"
						onClick="fn_next('${pagination.range}', 
						'${pagination.range}', '${pagination.rangeSize}')">Next</a></li>
				</c:if>
			</ul>
		</div>
		<!-- pagination{e} -->

	</section>
</body>

<script>
	window.onload = function() {
		var searchBtn = document.getElementById("searchBtn");
		var searchTitle = document.getElementById("searchTitle");

		searchTitle.addEventListener("keyup", function(event) {
			if (event.keyCode === 13) {
				searchBtn.click();
			}
		});

		searchBtn.onclick = function() {
			var url = "boardListPage.do";
			url = url + "?title=" + searchTitle.value;
			location.href = url;
		}
	}

	//tr 클릭 이벤트
	function trDblClickEvent(idx) {
		var url = "boardInfoPage/" + idx + ".do";
		location.href = url;
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
	//페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "boardListPage.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&title=" + searchTitle.value;
		location.href = url;
	}
	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "boardListPage.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&title=" + searchTitle.value;
		location.href = url;
	}
</script>
</html>