package com.longsys.servlet;

import com.longsys.dao.ISignatureDao;
import com.longsys.dao.SignatureDao;
import com.longsys.entity.Signatureinfo;
import com.longsys.service.AesCbc;
import com.longsys.service.ISignatureService;
import com.longsys.service.SignatureService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;


@WebServlet(name = "querySigaBynameServlet",urlPatterns = "/querySiga")
public class querySigaBynameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String enusername=request.getParameter("username").replace(" ","+");
        String sign=request.getParameter("sign");
//        System.out.println(enusername);
        String username= AesCbc.decrypt(enusername);
//        System.out.println(username);
//        System.out.println(sign);
        if(username!=null){
            ISignatureService iSignatureService=new SignatureService();
            Signatureinfo signatureinfo=iSignatureService.querySignatureinfoByname(username,sign);
            if (signatureinfo!=null){
                request.setAttribute("signatureinfo",signatureinfo);
                request.getRequestDispatcher("longsys.jsp").forward(request,response);
            }
            else {
                response.setContentType("text/html;charset=utf-8");
                response.getWriter().println("null");
            }
        }
        else {
            response.setContentType("text/html;charset=utf-8");
            response.getWriter().println("null");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
