<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
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