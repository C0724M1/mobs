<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/1/2025
  Time: 11:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<div>
    <form method="post">
        <div class="mb-3">
            <label for="book_Name" class="form-label">Tên sách: </label>
            <input type="text" class="form-control" id="book_Name" name="book_Name" required>
        </div>
        <div class="mb-3">
            <label for="author" class="form-label">Tác giả: </label>
            <input type="text" class="form-control" id="author" name="author">
        </div>
        <div class="mb-3">
            <label for="publisher" class="form-label">NXB: </label>
            <input type="text" class="form-control" id="publisher" name="publisher">
        </div>
        <div class="mb-3">
            <label for="book_ISBN" class="form-label">ISBN: </label>
            <input type="number" class="form-control" id="book_ISBN" name="book_ISBN">
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Giá: </label>
            <input type="text" class="form-control" id="price" name="price">
        </div>
        <div class="mb-3">
            <label for="stock" class="form-label">Tồn kho: </label>
            <input type="number" class="form-control" id="stock" name="stock">
        </div>
        <div class="mb-3">
            <label for="category_ID" class="form-label">Mã sách: </label>
            <input type="number" class="form-control" id="category_ID" name="category_ID">
        </div>
        <%--        <div class="mb-3">--%>
        <%--            <label for="category_ID" class="form-label">Điểm: </label>--%>
        <%--            <select>--%>
        <%--                --%>
        <%--            </select>--%>
        <%--            <input type="number" class="form-control" id="category_ID" name="category_ID">--%>
        <%--        </div>--%>


        <button type="submit" class="btn btn-primary">Sửa</button>
    </form>
</div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
