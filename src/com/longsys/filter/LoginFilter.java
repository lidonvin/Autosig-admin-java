package com.longsys.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "LoginFilter",urlPatterns = "/*")
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        String url = request.getRequestURI();
        System.out.println(url);
        int idx = url.lastIndexOf("/");
        String endWith = url.substring(idx + 1);
        String[] strArr=url.split("/");
        for (int i=0;i<strArr.length;i++){
            String path=strArr[i];
            if (path.equals("longsys.files")|path.equals("assets")|path.equals("bootstrap")|path.equals("css")|path.equals("download")|path.equals("font")|path.equals("image")|path.equals("images")|path.equals("js")){
                chain.doFilter(req, resp);
            }
        }
        HttpSession session=request.getSession();
        //登录页面和登录请求操作不用过滤
        if(endWith.equals("login.jsp")|endWith.equals("download.html")|endWith.equals("LoginServlet")|endWith.equals("querySiga")|endWith.equals("updateSiga")|(endWith.indexOf(".zip")!=-1)|(endWith.indexOf(".css")!=-1)|(endWith.indexOf(".js")!=-1)|(endWith.indexOf(".ico")!=-1)|(endWith.indexOf(".htm")!=-1)|(endWith.indexOf(".png")!=-1)){
            chain.doFilter(req, resp);
        }
        else {
            String token=(String) session.getAttribute("token");
            if (token!=null){
                chain.doFilter(req, resp);
            }
            else {
                response.sendRedirect("login.jsp");
            }
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
