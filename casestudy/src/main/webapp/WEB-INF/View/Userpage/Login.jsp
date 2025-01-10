<%--
  Created by IntelliJ IDEA.
  User: macintosh
  Date: 08/01/2025 A
  Time: 23:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
<div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
    <div class="card" style="width: 25rem;">
        <div class="card-body">
            <h5 class="card-title text-center">Đăng Nhập</h5>
            <form method="post" action="/user?action=login">
                <!-- Email input -->
                <div class="mb-3">
                    <label for="username" class="form-label"> Username </label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Nhập username" required>
                </div>
                <!-- Password input -->
                <div class="mb-3">
                    <label for="password" class="form-label">Mật khẩu</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu" required>
                </div>
                <!-- Remember me checkbox -->
                <div class="form-check mb-3">
                    <input type="checkbox" class="form-check-input" id="rememberMe">
                    <label class="form-check-label" for="rememberMe">Ghi nhớ tôi</label>
                </div>
                <!-- Submit button -->
                <button type="submit" class="btn btn-primary w-100">Đăng nhập</button>
            </form>
            <div class="text-center mt-3">
                <a href="#">Quên mật khẩu?</a> | <a href="/user?action=register">Đăng ký tài khoản mới</a>
            </div>
        </div>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
