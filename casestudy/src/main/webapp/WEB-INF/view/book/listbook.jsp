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
</head>
<body>
    <table class="table table-hover">
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
            <th colspan="2"></th>
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
                    <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#modalUpdate${book.book_ID}">Sửa</button>
                </td>
                <div class="modal fade" id="modalUpdate${book.book_ID}" tabindex="-1"
                     aria-labelledby="TestUpdate" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="TestUpdate">Update</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p>Bạn có chắc muốn sửa thông tin sách có tên là ${book.book_Name} và id là ${book.book_ID}?</p>
                                <small style="color: red; font-style: italic">Lưu ý hành động này không thể hoàn
                                    tác!</small>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                                <button type="button" class="btn btn-warning"
                                        onclick="window.location.href='/listbook?action=update&id=${book.book_ID}'">Xác
                                    nhận
                                </button>
                            </div>
                        </div>
                    </div>
                </div>




                <td>
                    <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#modalDelete${book.book_ID}">
                        Xóa
                    </button>
                </td>
                <div class="modal fade" id="modalDelete${book.book_ID}" tabindex="-1"
                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Xóa</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p>Bạn có chắc muốn xóa sách có tên là ${book.book_Name} và id là ${book.book_ID}?</p>
                                <small style="color: red; font-style: italic">Lưu ý hành động này không thể hoàn
                                    tác!</small>
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
        </tbody>
    </table>

    <button class="btn btn-primary" onclick="window.location.href='/listbook?action=create'">Thêm mới</button>
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
    },3000)
</script>
</html>
