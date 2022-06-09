package com.longsys.dao;

import com.longsys.entity.User;
import com.longsys.util.DBUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao implements IUserDao {

    public int login(User user) {
        String sql = "select count(*) from user where binary username=? and binary password=?";
        Object[] params = {user.getUsername(), user.getPassword()};
        return DBUtil.getCount(sql, params);
    }

    public User queryUser(String username) {
        User user = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            String sql = "select * from user where username=?";
            Object[] params = {username};
            rs = DBUtil.executeQuery(sql, params);
            while (rs.next()) {
                String id = rs.getString("id");
                String uname = rs.getString("username");
                String password = rs.getString("password");
                String name = rs.getString("name");
                user = new User(id, uname, password, name);
            }
            return user;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        } finally {
            DBUtil.closeAll(rs, pstmt, DBUtil.connection);
        }
    }

    public List<User> queryAllUser() {
        User user = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<User> users = new ArrayList<>();
        String sql = "select * from user";
        try {
            rs = DBUtil.executeQuery(sql,null);
            while (rs.next()) {
                String id = rs.getString("id");
                String uname = rs.getString("username");
                String name = rs.getString("name");
                user = new User(id, uname, name);
                users.add(user);
            }
            return users;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        } finally {
            DBUtil.closeAll(rs, pstmt, DBUtil.connection);
        }
    }

    public boolean updateUser(String id, String name, String password) {
        String sql="update user set name=?,password=? where id=?";
        String[] params = {name,password,id};
        return DBUtil.executeUpdate(sql,params) ;
    }

    public boolean addUser(String username, String name, String password) {
        return false;
    }
}
