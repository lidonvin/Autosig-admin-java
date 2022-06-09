package com.longsys.service;


import com.longsys.dao.IUserDao;
import com.longsys.dao.UserDao;
import com.longsys.entity.User;

import java.util.List;

public class LoginSerice implements ILoginService{
    IUserDao iUserDao=new UserDao();
    public boolean Login(User user) {
       if(iUserDao.login(user)==1){
           return true;
       }
       return false;
    }

    public List<User> QueryAllUser() {
        return iUserDao.queryAllUser();
    }

    public boolean UpdateUser(String id, String username,String name, String password,String pwd) {
        User user=new User(username,pwd);
        if (Login(user)){
            return iUserDao.updateUser(id,name,password);
        }else {
            return false;
        }
    }

    public User QueryUserByUsername(String username) {
        User user=iUserDao.queryUser(username);
        return user;
    }
}
