package com.example.casestudy.controller;

import com.example.casestudy.DTO.BookDTO;
import com.example.casestudy.entity.Books;
import com.example.casestudy.entity.Categories;
import com.example.casestudy.service.impl.CategoryService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "categoryController", urlPatterns = "/listcategory")
public class CategoryController extends HttpServlet {
    private CategoryService categoryService = new CategoryService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        ;
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                req.setAttribute("categories", categoryService.getAll());
                req.getRequestDispatcher("/WEB-INF/view/category/newcategory.jsp").forward(req, resp);
                break;
            case "delete":
                int category_ID = Integer.parseInt(req.getParameter("category_ID"));
                categoryService.remove(category_ID);
                resp.sendRedirect("/listcategory?message=deleted");
                break;

            default:
                String message = req.getParameter("message");
                if (message != null) {
                    if (message.equals("deleted")) {
                        req.setAttribute("message", "Xóa thành công");
                    } else if (message.equals("created")) {
                        req.setAttribute("message", "Thêm mới thành công");
                    }
                }
                List<Categories> categories = categoryService.getAll();
                req.setAttribute("categories", categories);
                req.getRequestDispatcher("/WEB-INF/view/category/listcategory.jsp").forward(req, resp);
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
                Integer category_ID = Integer.parseInt(req.getParameter("category_ID"));
                String category_Name = req.getParameter("category_Name");
                String category_Description = req.getParameter("category_Description");
                categoryService.save(new Categories(category_ID,category_Name, category_Description));
                resp.sendRedirect("/listbook?message=created");
        }
    }
}
