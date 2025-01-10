<%--
  Created by IntelliJ IDEA.
  User: macintosh
  Date: 07/01/2025 A
  Time: 00:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/css_admin/admin.css' />">
</head>
<body>
<%--navbar--%>
<nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="home.html"><img src="../assets/logo.png" alt="hình lỗi" style="width:40px"></a>
        <form class="d-flex ms-auto">
            <input class="form-control me-2" type="search" placeholder="Tìm kiếm" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
        <a class="nav-link" href="#" data-bs-toggle="dropdown">
            <img src="../assets/logo.png" style="width:40px; border-radius:50%;"/>
        </a>
        <ul class="dropdown-menu dropdown-menu-end">
            <li>
                <a href="#">
                    <i class="bi bi-person">Profile</i>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="bi bi-gear">Settings</i>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="bi bi-box-arrow-right">Log out</i>
                </a>
            </li>
        </ul>
    </div>
</nav>
<!--sidebar-->
<div class="sidebar bg-dark" >
    <nav class="nav flex-column">
        <a class="nav-link" href="home.html">
            <span class="icon">
                <i class="bi bi-grid"></i>
            </span>
            <span class="description">Bảng điều khiển</span>
        </a>
        <a class="nav-link" href="#">
            <span class="icon">
                <i class="bi bi-clipboard-check"></i>
            </span>
            <span class="description">Quy định</span>
        </a>
        <a class="nav-link" href="#">
            <span class="icon">
                <i class="bi bi-bell"></i>
            </span>
            <span class="description">Thông báo</span>
        </a>
        <!--        Drop down list khách hàng-->
        <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#submenu-customer" aria-expanded="false"
           aria-controls="submenu-customer">
            <span class="icon">
                <i class="bi bi-person-standing"></i>
            </span>
            <span class="description">Quản lý người dùng<i class="bi bi-caret-down-fill"></i></span>
        </a>
        <!--        Submenu for quản lý người dùng-->
        <div class="sub-menu collapse" id="submenu-customer">
            <a class="nav-link" href="<c:url value="/user"/>">
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Danh sách người dùng</span>
            </a>
            <a class="nav-link" href="<c:url value="/user"/>" />
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Bảo mật và đăng nhập</span>
            </a>
            <a class="nav-link" href="#">
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Thống kê người dùng</span>
            </a>
        </div>
        <!--        Drop down list sách-->
        <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#submenu-book" aria-expanded="false"
           aria-controls="submenu-book">
            <span class="icon">
                <i class="bi bi-book"></i>
            </span>
            <span class="description">Quản lý sách<i class="bi bi-caret-down-fill"></i></span>
        </a>
        <!--        Submenu for quản lý sách-->
        <div class="sub-menu collapse" id="submenu-book">
            <a class="nav-link" href="<c:url value="/listbook"/>">
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Danh sách sách</span>
            </a>
            <a class="nav-link" href="<c:url value="/listbook"/>">
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Tồn kho sách</span>
            </a>
            <a class="nav-link" href="#">
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Thống kê sách</span>
            </a>
        </div>

        <!--        Drop down list đánh giá-->
        <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#submenu-preview" aria-expanded="false"
           aria-controls="submenu-preview">
            <span class="icon">
                <i class="bi bi-chat-square-text"></i>
            </span>
            <span class="description">Quản lý danh mục<i class="bi bi-caret-down-fill"></i></span>
        </a>
        <!--        Submenu for quản lý đánh giá-->
        <div class="sub-menu collapse" id="submenu-preview">
            <a class="nav-link" href="<c:url value="/listcategory"/>" >
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Danh sách danh mục</span>
            </a>
            <a class="nav-link" href="<c:url value="/listcategory"/>" >
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Thống kê danh mục</span>
            </a>
        </div>

        <!--        Drop down list hóa đơn-->
        <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#submenu-bill" aria-expanded="false"
           aria-controls="submenu-bill">
            <span class="icon">
                <i class="bi bi-receipt"></i>
            </span>
            <span class="description">Quản lý hóa đơn<i class="bi bi-caret-down-fill"></i></span>
        </a>
        <!--        Submenu for quản lý hóa đơn-->
        <div class="sub-menu collapse" id="submenu-bill">
            <a class="nav-link" href="bill_admin.html">
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Danh sách hóa đơn</span>
            </a>
            <a class="nav-link" href="#">
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Thống kê hóa đơn</span>
            </a>
        </div>
        <!--        setting button-->
        <a class="nav-link" href="#">
            <span class="icon">
                <i class="bi bi-gear"></i>
            </span>
            <span class="description">Cài đặt</span>
        </a>
    </nav>
</div>
<!--main content-->
<main class="main-content">
    <div class="table-title">
        <div class="row">
            <h2>Quản lý Người Dùng</h2>
            <!--        add -->
            <div class="d-flex justify-content-lg-end justify-content-center">
                <a class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addModal">
                <span class="icon">
                    <i class="bi bi-plus-circle"></i>
                </span>
                    <span class="description" >Thêm mới</span>
                </a>
            </div>
        </div>
    </div>
<%--table--%>
    <table class="table table-striped table-hover table-sm">
        <thead>
        <tr>
            <th>
                <span class="custom-checkbox">
                    <input type="checkbox" id="selectAll">
                    <label for="selectAll"></label>
                </span>
            </th>
            <th>STT</th>
            <th>ID người dùng</th>
            <th>Tên</th>
            <th>Mật khẩu</th>
            <th>Email</th>
            <th>Số điện thoại</th>
            <th>Vai trò người dùng</th>
            <th>Trạng thái người dùng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="user" varStatus="temp">
            <tr>
                <td>
                    <span class="custom-checkbox">
                        <input type="checkbox" id="checkbox${user.user_ID}" name="options[]" value="${user.user_ID}">
                        <label for="checkbox${user.user_ID}"></label>
                    </span>
                </td>
                <td>${temp.count}</td>
                <td>${user.user_ID}</td>
                <td>${user.user_Name}</td>
                <td>${user.user_Pass}</td>
                <td>${user.email}</td>
                <td>${user.user_Role}</td>
                <td>${user.user_Status}</td>
                <td>${user.phone}</td>
                <td>
                    <a class="edit" data-bs-toggle="modal" data-bs-target="#editModal${user.user_ID}">
                        <span class="icon">
                            <i class="bi bi-pencil-square" data-bs-toggle="tooltip" title="Chỉnh sửa"></i>
                        </span>
                    </a>
                    <a class="delete" data-bs-toggle="modal" data-bs-target="#deleteModal${user.user_ID}">
                        <span class="icon">
                            <i class="bi bi-trash" data-bs-toggle="tooltip" title="Xóa"></i>
                        </span>
                    </a>
                </td>
            </tr>

            <div id="editModal${user.user_ID}" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <!-- Form duy nhất -->
                        <form method="post" action="/user?action=update">
                            <div class="modal-header">
                                <h4 class="modal-title">Chỉnh sửa người dùng</h4>
                                <button type="button" class="close" data-bs-dismiss="modal" aria-hidden="true">
                                    <i class="bi bi-x-lg"></i>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Tên</label>
                                    <input type="text" class="form-control" name="user_Name">
                                </div>
                                <div class="form-group">
                                    <label>ID người dùng</label>
                                    <input type="text" class="form-control" name="user_ID"
                                           value="${user.user_ID}" readonly>
                                </div>
                                <div class="form-group">
                                    <label>MK</label>
                                    <input type="text" class="form-control" name="user_Pass">
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" class="form-control" name="email">
                                </div>
                                <div class="form-group">
                                    <label>Số điện thoại</label>
                                    <input type="text" class="form-control" name="phone">
                                </div>
                                <div class="form-group">
                                    <label>Vai trò người dùng</label>
                                    <input type="text" class="form-control" name="user_Role">
                                </div>
                                <div class="form-group">
                                    <label>Trạng thái người dùng</label>
                                    <input type="text" class="form-control" name="user_Status">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-bs-dismiss="modal" value="Cancel">
                                <input type="submit" class="btn btn-info" value="Save">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!--    Delete Modal-->
            <div id="deleteModal${user.user_ID}" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form>
                            <div class="modal-header">
                                <h4 class="modal-title">Xóa người dùng</h4>
                                <button type="button" class="close" data-bs-dismiss="modal" aria-hidden="true">
                                    <i class="bi bi-x-lg"></i>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p> Bạn có chắc chắn muốn xóa user có tên là ${user.user_Name} và id là ${user.user_ID}</p>
                                <p class="text-warning"><small>Thao tác này sẽ không thể hoàn tác.</small></p>
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-bs-dismiss="modal" value="Cancel">
                                <button type="button" class="btn btn-danger" onclick="window.location.href='/user?action=delete&id=${user.user_ID}'">Save</button>
<%--                                dùng button để do Get--%>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach>
        <c:if test="${message != null}">
            <div class="alert alert-success" role="alert" id="message">
                    ${message}
            </div>
        </c:if>
        </tbody>
    </table>
    <!--    Add Modal-->
    <div id="addModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form method="post" action="/user?action=create">
                    <div class="modal-header">
                        <h4 class="modal-title">Thêm mới người dùng</h4>
                        <button type="button" class="close" data-bs-dismiss="modal" aria-hidden="true">
                            <i class="bi bi-x-lg"></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Tên</label>
                            <input type="text" class="form-control" name="user_Name" required>
                        </div>
                        <div class="form-group">
                            <label>ID người dùng</label>
                            <input type="text" class="form-control" name="user_ID" required>
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu</label>
                            <input type="text" class="form-control" name="user_Pass" required>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" class="form-control" name="email" required>
                        </div>
                        <div class="form-group">
                            <label>Số điện thoại</label>
                            <textarea class="form-control" name="phone" required></textarea>
                        </div>
                        <div class="form-group">
                            <label>Vai trò người dùng</label>
                            <input type="text" class="form-control" name="user_Role" required>
                        </div>
                        <div class="form-group">
                            <label>Trạng thái người dùng</label>
                            <input type="text" class="form-control" name="user_Status" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-bs-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-info" value="Save">
                    </div>
                </form>
            </div>
        </div>
    </div>
</main>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script>
    setTimeout(function () {
        document.getElementById("message").remove();
    }, 2000)
    <c
</script>
</html>
