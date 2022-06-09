package com.longsys.servlet;

import com.longsys.dao.GetRandomStr;
import com.longsys.dao.IUserDao;
import com.longsys.dao.UserDao;
import com.longsys.entity.User;
import com.longsys.service.ILoginService;
import com.longsys.service.LoginSerice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet",urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("utf-8");
        String username= request.getParameter("username");
        String password= request.getParameter("password");
        HttpSession session = request.getSession();
        User user=new User(username,password);
        ILoginService iLoginService=new LoginSerice();
        if(iLoginService.Login(user)){
            response.getWriter().println("登录成功");
            System.out.println("登录成功");
            String token= GetRandomStr.getRandomString(8);
            System.out.println(token);
            session.setAttribute("token",token);

            IUserDao iUserDao=new UserDao();
            User user1=iUserDao.queryUser(username);
            request.setAttribute("userinfo",user1);
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }else {
            response.getWriter().println("登录失败");
            System.out.println("登录失败");
            response.sendRedirect("login.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
