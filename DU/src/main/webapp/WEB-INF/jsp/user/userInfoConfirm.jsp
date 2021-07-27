<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>보노 마켓 - 아이디 찾기 결과</title>

        <!-- Custom fonts for this template-->
        <link href="${pageContext.request.contextPath}/js/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
            type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="${pageContext.request.contextPath}/js/css/sb-admin-2.min.css" rel="stylesheet">

    </head>

    <body class="bg-gradient-primary">

        <div class="container">

            <!-- Outer Row -->
            <div class="row justify-content-center">

                <div class="col-xl-10 col-lg-12 col-md-9">

                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-2">내 정보 확인</h1>
                                            <p class="mb-4">비밀번호 입력 후 엔터 누르세요.</p>
                                        </div>
                                        <form action="userInfoConfirm.do" method="post">
                                            <div class="form-group">
                                                <input type="hidden" name="userId" value="${USER.userId}">
                                                <input type="password" class="form-control form-control-user" name="pwd"
                                                    required placeholder="Password">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>


        <!-- Bootstrap core JavaScript-->
        <script src="${pageContext.request.contextPath}/js/vendor/jquery/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="${pageContext.request.contextPath}/js/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="${pageContext.request.contextPath}/js/js/sb-admin-2.min.js"></script>

    </body>

    </html>