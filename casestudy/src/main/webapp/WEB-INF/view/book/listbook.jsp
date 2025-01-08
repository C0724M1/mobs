<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/1/2025
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/css_admin/admin.css' />">
</head>
<body>

<nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="home.html"><img src="assets/logo.png" alt="hình lỗi" style="width:40px"></a>
        <form class="d-flex ms-auto">
            <input class="form-control me-2" type="search" placeholder="Tìm kiếm" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
        <a class="nav-link" href="#" data-bs-toggle="dropdown">
            <img src="assets/logo.png" style="width:40px; border-radius:50%;"/>
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
<div class="sidebar bg-dark">
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
            <a class="nav-link" href="user_admin.html">
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Danh sách người dùng</span>
            </a>
            <a class="nav-link" href="#">
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
            <a class="nav-link" href="book_admin.html">
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Danh sách sách</span>
            </a>
            <a class="nav-link" href="#">
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
            <span class="description">Quản lý đánh giá<i class="bi bi-caret-down-fill"></i></span>
        </a>
        <!--        Submenu for quản lý đánh giá-->
        <div class="sub-menu collapse" id="submenu-preview">
            <a class="nav-link" href="review_admin.html">
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Danh sách đánh giá</span>
            </a>
            <a class="nav-link" href="#">
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Duyệt đánh giá</span>
            </a>
            <a class="nav-link" href="#">
                <span class="icon">
                    <i class="bi bi-file-earmark-check"></i>
                </span>
                <span class="description">Thống kê đánh giá</span>
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
<!--main-->
<main class="main-content">
    <div class="table-title">
        <div class="row">
            <h2>Quản lý Sách</h2>
            <!--        add -->
            <div class="d-flex justify-content-lg-end justify-content-center">
                <a class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addModal">
                <span class="icon">
                    <i class="bi bi-plus-circle"></i>
                </span>
                    <span class="description">Thêm mới</span>
                </a>
            </div>
        </div>
    </div>
    <table class="table table-striped table-hover">
        <thead>
        <tr>
            <th>STT</th>
            <th>ID sách</th>
            <th>Tên sách</th>
            <th>Tác giả</th>
            <th>NXB</th>
            <th>ISBN</th>
            <th>Giá</th>
            <th>Tồn kho</th>
            <th>Mã danh mục</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${books}" var="book" varStatus="temp">
        <tr>
            <td>${temp.count}</td>
            <td>${book.book_ID}</td>
            <td>${book.book_Name}</td>
            <td>${book.author}</td>
            <td>${book.publisher}</td>
            <td>${book.book_ISBN}</td>
            <td>${book.price}</td>
            <td>${book.stock}</td>
            <td>${book.category_Name}</td>


            <td>
                <a class="edit" data-bs-toggle="modal" data-bs-target="#editModal${book.book_ID}">
    <span class="icon">
    <i class="bi bi-pencil-square" data-bs-toggle="tooltip" title="Chỉnh sửa"></i>
    </span>
                </a>

                <a class="delete" data-bs-toggle="modal" data-bs-target="#deleteModal${book.book_ID}">
    <span class="icon">
    <i class="bi bi-trash" data-bs-toggle="tooltip" title="Xóa"></i>
    </span>
                </a>
            </td>
            <div id="editModal${book.book_ID}" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="/listbook?action=update&id=${book.book_ID}" method="post">
                            <div class="modal-header">
                                <h4 class="modal-title">Chỉnh sửa sách</h4>
                                <button type="button" class="close" data-bs-dismiss="modal" aria-hidden="true">
                                    <i class="bi bi-x-lg"></i>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="book_NameEdit" class="form-label">Tiêu đề</label>
                                    <input type="text" class="form-control" id="book_NameEdit"
                                           name="book_NameEdit"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="authorEdit" class="form-label">Tác giả</label>
                                    <input type="text" class="form-control" id="authorEdit" name="authorEdit"></input>
                                </div>
                                <div class="form-group">
                                    <label for="publisherEdit" class="form-label">Nhà xuất bản</label>
                                    <input type="text" class="form-control" id="publisherEdit" name="publisherEdit">
                                </div>
                                <div class="form-group">
                                    <label for="book_ISBNEdit" class="form-label">ISBN</label>
                                    <input type="text" class="form-control" id="book_ISBNEdit" name="book_ISBNEdit">
                                </div>
                                <div class="form-group">
                                    <label for="priceEdit" class="form-label">Giá</label>
                                    <input type="text" class="form-control" id="priceEdit" name="priceEdit">
                                </div>
                                <div class="form-group">
                                    <label for="stockEdit" class="form-label">Tồn kho</label>
                                    <input type="text" class="form-control" id="stockEdit" name="stockEdit">
                                </div>
                                <div class="form-group">
                                    <label for="category_IDEdit" class="form-label">Mã sách</label>
                                    <input type="text" class="form-control" id="category_IDEdit" name="category_IDEdit">
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
            <!-- Delete Modal-->
            <div class="modal fade" id="deleteModal${book.book_ID}" tabindex="-1"
                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Xóa Sách</h4>
                            <button type="button" class="close" data-bs-dismiss="modal" aria-hidden="true">
                                <i class="bi bi-x-lg"></i>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>Bạn có chắc chắn muốn xóa sách có tên là ${book.book_Name} và id là ${book.book_ID}??</p>
                            <p class="text-warning"><small>Thao tác này sẽ không thể hoàn tác.</small></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                            <button type="button" class="btn btn-danger"
                                    onclick="window.location.href='/listbook?action=delete&id=${book.book_ID}'">Xác
                                nhận
                            </button>
                        </div>

                    </div>
                </div>
            </div>

        </tr>
        </c:forEach>

    </table>

    <!-- Add Modal-->
    <div id="addModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="/listbook?action=create" method="post">
                    <div class="modal-header">
                        <h4 class="modal-title">Thêm mới Sách</h4>
                        <button type="button" class="close" data-bs-dismiss="modal" aria-hidden="true">
                            <i class="bi bi-x-lg"></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <%--                        <div class="form-group">--%>
                        <%--                            <label>ID sách</label>--%>
                        <%--                            <input type="text" class="form-control" required>--%>
                        <%--                        </div>--%>
                        <div class="form-group">
                            <label for="book_Name" class="form-label">Tiêu đề</label>
                            <input type="text" class="form-control" id="book_Name" name="book_Name"></input>
                        </div>
                        <div class="form-group">
                            <label for="author" class="form-label">Tác giả</label>
                            <input type="text" class="form-control" id="author" name="author"></input>
                        </div>
                        <div class="form-group">
                            <label for="publisher" class="form-label">Nhà xuất bản</label>
                            <input type="text" class="form-control" id="publisher" name="publisher">
                        </div>
                        <div class="form-group">
                            <label for="book_ISBN" class="form-label">IBSN</label>
                            <input type="text" class="form-control" id="book_ISBN" name="book_ISBN">
                        </div>
                        <div class="form-group">
                            <label for="price" class="form-label">Giá</label>
                            <input type="text" class="form-control" id="price" name="price">
                        </div>
                        <div class="form-group">
                            <label for="stock" class="form-label">Tồn kho</label>
                            <input type="text" class="form-control" id="stock" name="stock">
                        </div>
                        <div class="form-group">
                            <label for="category_ID" class="form-label">Loại sách: </label>
                            <select id="category_ID" name="category_ID" class="form-control">
                                <option value="">------Chọn mã sách-------</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>

<%--                                <c:forEach items="${categories}" var="category">--%>
<%--                                    <option value="${category.category_ID}">${category.category_Name}</option>--%>
<%--                                </c:forEach>--%>
                            </select>
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
    <!-- Edit Modal-->

</main>
</tbody>


<c:if test="${message != null}">
    <div class="alert alert-success" role="alert" id="message">
            ${message}
    </div>
</c:if>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script>
    setTimeout(function () {
        document.getElementById("message").remove();
    }, 3000)
</script>
</html>