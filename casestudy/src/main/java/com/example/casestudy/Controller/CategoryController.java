package com.example.casestudy.Controller;


import com.example.casestudy.DTO.BookDTO;
import com.example.casestudy.Entity.Books;
import com.example.casestudy.Entity.Categories;
import com.example.casestudy.Service.CategoryService;

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
            case "delete":
                int category_ID = Integer.parseInt(req.getParameter("id"));
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
                    }else if(message.equals("updated")){
                        req.setAttribute("message","Chỉnh sửa thành công");
                    }
                }
                List<Categories> categories = categoryService.getAll();
                req.setAttribute("categories", categories);
                req.getRequestDispatcher("/WEB-INF/View/Userpage/category.jsp").forward(req, resp);
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
                categoryService.save(new Categories(category_ID, category_Name, category_Description));
                resp.sendRedirect("/listcategory?message=created");
                break;
            case "update":
                int id = Integer.parseInt(req.getParameter("id"));
                System.out.println(id);
                Categories category = new Categories(req.getParameter("category_NameEdit"), req.getParameter("category_DescriptionEdit"));
                categoryService.update(id, category);
                resp.sendRedirect("/listcategory?message=updated");
                break;
        }
    }
}
