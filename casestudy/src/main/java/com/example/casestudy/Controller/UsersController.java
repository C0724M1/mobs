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
    private UsersService userService = new UsersService();


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
            case "login":
                req.getRequestDispatcher("/WEB-INF/View/Userpage/Login.jsp").forward(req, resp);
                break;
            case "register":
                req.getRequestDispatcher("/WEB-INF/View/Userpage/Register.jsp").forward(req, resp);
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
                    } else if (message.equals("true")) {
                        req.setAttribute("message", "Đăng nhập thành công");
                    } else if (message.equals("false")) {
                        req.setAttribute("message", "Đăng nhập thất bại");
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
            case "login":
                String username = req.getParameter("username");
                String password = req.getParameter("password");
                Users user1 = userService.login(username, password);
                System.out.println(user1);
                if (user1 != null && user1.getUser_Status().equals("Active") && user1.getUser_Role().equals("Admin")) {
                    resp.sendRedirect("/user?action");
                } else if (user1 != null && user1.getUser_Status().equals("Active") && user1.getUser_Role().equals("User")) {
                    resp.sendRedirect("/Booksimple?message=true_user");
                } else {
                    resp.sendRedirect("/Booksimple?message=false");
                }
                break;
            case "register":
                user_name = req.getParameter("username");
                email = req.getParameter("email");
                user_pass = req.getParameter("password");
                phone = req.getParameter("phone");
                user_role = req.getParameter("userRole");
                user_status = req.getParameter("userStatus");
                user = new Users(user_name, user_pass, email, user_role, user_status, phone);
                userService.saveRegister(user);
                resp.sendRedirect("/Booksimple?message=register_success");
                break;
        }
    }
}
