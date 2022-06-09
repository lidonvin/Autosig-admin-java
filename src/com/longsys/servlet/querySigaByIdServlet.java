package com.longsys.servlet;

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

@WebServlet(name = "querySigaByIdServlet",urlPatterns = "/querySigaByIdServlet")
public class querySigaByIdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String id=request.getParameter("id");
        String sign=request.getParameter("sign");
        String type=request.getParameter("type");
        if(id!=null){
            ISignatureService iSignatureService=new SignatureService();
            Signatureinfo signatureinfo=iSignatureService.querySignatureinfoById(id,sign);
            if (signatureinfo!=null){
                request.setAttribute("signatureinfo",signatureinfo);
                request.setAttribute("sign",sign);
                if (type.equals("0")){
                    request.getRequestDispatcher("longsys.jsp").forward(request,response);
                }
                else if (type.equals("1")){
                    request.getRequestDispatcher("view/employee/employeeUpdate.jsp").forward(request,response);
                }
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
