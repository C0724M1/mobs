<%--
  Created by IntelliJ IDEA.
  User: macintosh
  Date: 09/01/2025 A
  Time: 00:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Register Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
<!-- Trung tâm form đăng ký -->
<div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
  <div class="card" style="width: 30rem;">
    <div class="card-body">
      <h5 class="card-title text-center">Đăng Ký Tài Khoản</h5>
      <form method="post" action="/user?action=register">
        <!-- Tên người dùng -->
        <div class="mb-3">
          <label for="username" class="form-label">Tên người dùng</label>
          <input type="text" class="form-control" id="username" name="username" placeholder="Nhập tên người dùng" required>
        </div>
        <!-- Email -->
        <div class="mb-3">
          <label for="email" class="form-label">Email</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="Nhập email" required>
        </div>
        <div class="mb-3">
          <label for="phone" class="form-label">Số điện thoại</label>
          <input type="text" class="form-control" id="phone" name="phone" placeholder="Số điện thoại" required>
        </div>
        <!-- Mật khẩu -->
        <div class="mb-3">
          <label for="password" class="form-label">Mật khẩu</label>
          <input type="password" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu" required>
        </div>
        <!-- Xác nhận mật khẩu -->
        <div class="mb-3">
          <label for="confirmPassword" class="form-label">Xác nhận mật khẩu</label>
          <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Xác nhận mật khẩu" required>
        </div>
        <div class="mb-3">
          <label for="userRole" class="form-label">Quyền tài khoản  </label>
          <input type="text" class="form-control" id="userRole" name="userRole" value="User" readonly>
        </div>
        <div class="mb-3">
          <label for="userStatus" class="form-label">Trạng thái tài khoản</label>
          <input type="text" class="form-control" id="userStatus" name="userStatus" value="Active" readonly>
        </div>
        <!-- Nút đăng ký -->
        <button type="submit" class="btn btn-primary w-100">Đăng ký</button>
      </form>
    </div>
  </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
