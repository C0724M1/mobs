package com.example.casestudy.Controller;

import com.example.casestudy.DTO.BookDTO;
import com.example.casestudy.Entity.Books;
import com.example.casestudy.Entity.Categories;
import com.example.casestudy.Service.BookService;
import com.example.casestudy.Service.CategoryService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BookController", urlPatterns = "/listbook")
public class BookController extends HttpServlet {
    private BookService bookService = new BookService();
    private CategoryService categoryService = new CategoryService();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

//        req.getRequestDispatcher("/WEB-INF/View/Userpage/Booksimple.jsp").forward(req, resp);


        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                List<Categories> categories = categoryService.getAll();
                req.setAttribute("categories", categories);
                req.getRequestDispatcher("/WEB-INF/View/Userpage/listbook.jsp").forward(req, resp);
                break;
            case "delete":
                int book_ID = Integer.parseInt(req.getParameter("id"));
                bookService.remove(book_ID);
                resp.sendRedirect("/listbook?message=deleted");
                break;
            case "update":
                break;
            default:
                String message = req.getParameter("message");
                if (message != null) {
                    if (message.equals("deleted")) {
                        req.setAttribute("message", "Xóa thành công");
                    } else if (message.equals("created")) {
                        req.setAttribute("message", "Thêm mới thành công");
                    } else if (message.equals("updated")) {
                        req.setAttribute("message", "Cập nhật thành công");
                    }
                }
                List<BookDTO> books = bookService.getAllBookDTO();
                req.setAttribute("books", books);
                req.getRequestDispatcher("/WEB-INF/View/Userpage/listbook.jsp").forward(req, resp);
        }


    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                String book_Name = req.getParameter("book_Name");
                String author = req.getParameter("author");
                String publisher = req.getParameter("publisher");
                String book_ISBN = req.getParameter("book_ISBN");
                double price = Double.parseDouble(req.getParameter("price"));
                int stock = Integer.parseInt(req.getParameter("stock"));
                int category_ID = Integer.parseInt(req.getParameter("category_ID"));
                bookService.save(new Books(book_Name, author, publisher, book_ISBN, price, stock, category_ID));
                resp.sendRedirect("/listbook?message=created");
                break;
            case "update":
                Books book = new Books(req.getParameter("book_NameEdit"), req.getParameter("authorEdit"), req.getParameter("publisherEdit"), req.getParameter("book_ISBNEdit"), Double.parseDouble(req.getParameter("priceEdit")), Integer.parseInt(req.getParameter("stockEdit")), Integer.parseInt(req.getParameter("category_IDEdit")));
                int book_ID = Integer.parseInt(req.getParameter("id"));
                bookService.update(book_ID, book);
                resp.sendRedirect("/listbook?message=updated");
                break;

        }
    }
}
