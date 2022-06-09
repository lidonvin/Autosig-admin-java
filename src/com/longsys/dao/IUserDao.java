package com.longsys.dao;

import com.longsys.entity.User;

import java.util.List;

public interface IUserDao {
    public int login(User user);
    public User queryUser(String username);
    public List<User> queryAllUser();
    public boolean updateUser(String id,String name,String password);
    public boolean addUser(String username,String name,String password);
}
