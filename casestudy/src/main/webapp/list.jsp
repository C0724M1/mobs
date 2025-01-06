<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<title>Book List</title>
</head>
<body>
	<h1>Book List</h1>
	<table border="1">
		<thead>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Author</th>
			<th>Publisher</th>
			<th>ISBN</th>
			<th>Price</th>
			<th>Stock</th>
			<th>Category</th>
			<th>Actions</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="book" items="${books}">
			<tr>
				<td>${book.book_ID}</td>
				<td>${book.book_Name}</td>
				<td>${book.author}</td>
				<td>${book.publisher}</td>
				<td>${book.book_ISBN}</td>
				<td>${book.price}</td>
				<td>${book.stock}</td>
				<td>${book.category_ID}</td>
				<td>
					<a href="/books?action=delete&id=${book.book_ID}">Delete</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>
