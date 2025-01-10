package com.example.casestudy.Controller;

import com.example.casestudy.DTO.BookDTO;
import com.example.casestudy.Entity.Books;
import com.example.casestudy.Service.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "bookDetailController", urlPatterns = "/bookdetail")
public class BookDetailController extends HttpServlet {
    private BookService bookService = new BookService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        int book_ID = Integer.parseInt(req.getParameter("id"));
        Books book = bookService.findById(book_ID);
        String src = bookService.findImgURL(book_ID);
        req.setAttribute("book", book);
        req.setAttribute("src", src);

        req.getRequestDispatcher("/WEB-INF/View/Userpage/bookdetail.jsp").forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}

