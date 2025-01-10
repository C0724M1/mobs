package com.example.casestudy.Controller;

import com.example.casestudy.DTO.BookDTO;
import com.example.casestudy.Service.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "shopController", urlPatterns = "/Booksimple")
public class ShopController extends HttpServlet {
    private com.example.casestudy.Service.BookService bookService = new BookService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        List<BookDTO> bookShops = bookService.getAllBookShop();
        req.setAttribute("bookShops", bookShops);
        req.getRequestDispatcher("/WEB-INF/View/Userpage/Booksimple.jsp").forward(req, resp);

        String message = req.getParameter("message");
        if (message != null) {
            if (message.equals("true_user")) {
                req.setAttribute("message", "Đăng nhập thành công");
                req.getRequestDispatcher("/WEB-INF/View/Userpage/Booksimple.jsp").forward(req, resp);
            } else if (message.equals("false")) {
                req.setAttribute("message", "Đăng nhập thất bại");
                resp.sendRedirect("/user?action=login");
            } else if (message.equals("register_success")) {
                req.setAttribute("message", "Đăng ký thành công");
                req.getRequestDispatcher("/WEB-INF/View/Userpage/Booksimple.jsp").forward(req, resp);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
