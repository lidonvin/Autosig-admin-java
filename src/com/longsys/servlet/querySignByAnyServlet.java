package com.longsys.servlet;

import com.longsys.entity.Signatureinfo;
import com.longsys.service.ISignatureService;
import com.longsys.service.SignatureService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "querySignByAnyServlet",urlPatterns = "/querySignByAnyServlet")
public class querySignByAnyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ISignatureService iSignatureService=new SignatureService();
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("utf-8");
        String sign=request.getParameter("sign");
        String id=request.getParameter("id");
        String username=request.getParameter("username");
        String name=request.getParameter("name");
        String department=request.getParameter("department");
        List<Signatureinfo> signatureinfos=iSignatureService.querySignByAny(id,username,name,department,sign);
        request.setAttribute("signatureinfos",signatureinfos);
        request.setAttribute("sign",sign);
        request.getRequestDispatcher("/view/employee/employeeQuery.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
