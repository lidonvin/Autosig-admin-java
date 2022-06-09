package com.longsys.service;

import com.longsys.entity.User;

import java.util.List;

public interface ILoginService {
    public boolean Login(User user);
    public List<User> QueryAllUser();
    public boolean UpdateUser(String id,String username,String name,String password,String pwd);
    public User QueryUserByUsername(String username);
}
