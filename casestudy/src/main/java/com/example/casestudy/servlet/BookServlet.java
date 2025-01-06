package com.example.casestudy.servlet;

import com.example.casestudy.entity.Books;
import com.example.casestudy.service.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BookServlet", urlPatterns = {"/books"})
public class BookServlet extends HttpServlet {
	private final BookService bookService = new BookService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) {
			action = "list";
		}

		switch (action) {
			case "delete":
				deleteBook(request, response);
				break;
			default:
				listBooks(request, response);
				break;
		}
	}

	private void listBooks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Books> books = bookService.getAllBooks();
		request.setAttribute("books", books);
		request.getRequestDispatcher("/books/list.jsp").forward(request, response);
	}

	private void deleteBook(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		bookService.deleteBookById(id);
		response.sendRedirect("/books");
	}
}
