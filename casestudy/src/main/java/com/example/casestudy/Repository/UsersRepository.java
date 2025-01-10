package com.example.casestudy.Repository;

import com.example.casestudy.Entity.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsersRepository {
    public List<Users> getAll() {
        List<Users> users = new ArrayList<>();
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from users");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int user_ID = rs.getInt("user_ID");
                String user_name = rs.getString("user_name");
                String user_pass = rs.getString("user_pass");
                String email = rs.getString("email");
                String user_role = rs.getString("user_role");
                String user_status = rs.getString("user_status");
                String phone = rs.getString("phone");
                Users user = new Users(user_ID, user_name, user_pass, email, user_role, user_status, phone);
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    public void save(Users s) {
        Connection connection = BaseRepo.getConnection();
        String sql = "insert into users(user_ID, user_name, user_pass, email, user_role, user_status, phone) values (?,?,?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, s.getUser_ID());
            preparedStatement.setString(2, s.getUser_Name());
            preparedStatement.setString(3, s.getUser_Pass());
            preparedStatement.setString(4, s.getEmail());
            preparedStatement.setString(5, s.getUser_Role());
            preparedStatement.setString(6, s.getUser_Status());
            preparedStatement.setString(7, s.getPhone());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void saveRegister(Users s) {
        Connection connection = BaseRepo.getConnection();
        String sql = "insert into users(user_name, user_pass, email, user_role, user_status, phone) values (?,?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, s.getUser_Name());
            preparedStatement.setString(2, s.getUser_Pass());
            preparedStatement.setString(3, s.getEmail());
            preparedStatement.setString(4, s.getUser_Role());
            preparedStatement.setString(5, s.getUser_Status());
            preparedStatement.setString(6, s.getPhone());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteById(int id) {
        try {
            PreparedStatement statement = BaseRepo.getConnection()
                    .prepareStatement("delete from users where user_ID = ?");
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

//        Users user = findById(id);
//        if (user != null) {
//            if (!s.getUser_Name().equals(user.getUser_Name()) && !s.getUser_Name().isEmpty()) {
//                user.setUser_Name(s.getUser_Name());
//            } else if (!s.getUser_Pass().equals(user.getUser_Pass()) && !s.getUser_Pass().isEmpty()) {
//                user.setUser_Pass(s.getUser_Pass());
//            } else if (!s.getEmail().equals(user.getEmail()) && !s.getEmail().isEmpty()) {
//                user.setEmail(s.getEmail());
//            } else if (!s.getUser_Role().equals(user.getUser_Role()) && !s.getUser_Role().isEmpty()) {
//                user.setUser_Role(s.getUser_Role());
//            } else if (!s.getUser_Status().equals(user.getUser_Status()) && !s.getUser_Status().isEmpty()) {
//                user.setUser_Status(s.getUser_Status());
//            } else if (!s.getPhone().equals(user.getPhone()) && !s.getPhone().isEmpty()) {
//                user.setPhone(s.getPhone());
//            }
        public void update(int id, Users s) {
            Connection connection = BaseRepo.getConnection();
            String sql = "UPDATE users SET user_name = ?, user_pass = ?, email = ?, user_role = ?, user_status = ?, phone = ? WHERE user_ID = ?";
            try {
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, s.getUser_Name());
                preparedStatement.setString(2, s.getUser_Pass());
                preparedStatement.setString(3, s.getEmail());
                preparedStatement.setString(4, s.getUser_Role());
                preparedStatement.setString(5, s.getUser_Status());
                preparedStatement.setString(6, s.getPhone());
                preparedStatement.setInt(7, id);
                int rowsAffected = preparedStatement.executeUpdate();
                if (rowsAffected > 0) {
                    System.out.println("User with ID " + id + " was updated successfully.");
                } else {
                    System.out.println("No user found with ID " + id + ".");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                throw new RuntimeException("Error updating user with ID " + id, e);
            }
        }

    public Users findById(int id) {
        if (id > 0) {
            for (Users user : getAll()) {
                if (user.getUser_ID() == id) {
                    return user;
                }
            }
        }
        return null;
    }

    public Users login(String user, String pass) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from users where user_name = ? and user_pass = ?");
            preparedStatement.setString(1, user);
            preparedStatement.setString(2, pass);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String user_name = rs.getString("user_name");
                String user_pass = rs.getString("user_pass");
                String email = rs.getString("email");
                String user_role = rs.getString("user_role");
                String user_status = rs.getString("user_status");
                String phone = rs.getString("phone");
                Users users = new Users(user_name, user_pass, email, user_role, user_status, phone);
                return users;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}