package com.example.casestudy.Controller;

import com.example.casestudy.Entity.Users;
import com.example.casestudy.Service.IUsersService;
import com.example.casestudy.Service.UsersService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserController", urlPatterns = "/user")
public class UsersController extends HttpServlet {
    private IUsersService userService = new UsersService();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "delete":
                int id = Integer.parseInt(req.getParameter("id"));
                userService.remove(id);
                resp.sendRedirect("/user?message=deleted");
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
                List<Users> users = userService.getAll();
                req.setAttribute("users", users);
                req.getRequestDispatcher("/WEB-INF/View/Userpage/ListUserpage.jsp").forward(req, resp);
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
                int user_ID = Integer.parseInt(req.getParameter("user_ID"));
                String user_name = req.getParameter("user_Name");
                String user_pass = req.getParameter("user_Pass");
                String email = req.getParameter("email");
                String user_role = req.getParameter("user_Role");
                String user_status = req.getParameter("user_Status");
                String phone = req.getParameter("phone");
                Users user = new Users(user_ID, user_name, user_pass, email, user_role, user_status, phone);
                userService.save(user);
                resp.sendRedirect("/user?message=created");
                break;
            case "update":
                int id = Integer.parseInt(req.getParameter("user_ID"));
                user_name = req.getParameter("user_Name");
                user_pass = req.getParameter("user_Pass");
                email = req.getParameter("email");
                user_role = req.getParameter("user_Role");
                user_status = req.getParameter("user_Status");
                phone = req.getParameter("phone");
                user = new Users(id, user_name, user_pass, email, user_role, user_status, phone);
                userService.update(id, user);
                resp.sendRedirect("/user?message=updated");
                break;
        }
    }
}
