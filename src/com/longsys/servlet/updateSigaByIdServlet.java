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

@WebServlet(name = "updateSigaByIdServlet",urlPatterns = "/updateSigaByIdServlet")
public class updateSigaByIdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("utf-8");
        String id=request.getParameter("id");
        String sign=request.getParameter("sign");
        String username=request.getParameter("username");
        String name=request.getParameter("name");
        String ename=request.getParameter("ename");
        String position=request.getParameter("position");
        String department=request.getParameter("department");
        String mobile=request.getParameter("mobile");
        String tel=request.getParameter("tel");
        if (id!=null){
            Signatureinfo signatureinfo=new Signatureinfo(id,username,name,ename,position,department,mobile,tel);
            ISignatureService iSignatureService=new SignatureService();
            boolean result=iSignatureService.updateSignatureinfoById(signatureinfo,sign);
            if (result){
                response.getWriter().print("修改成功。");
                request.getRequestDispatcher("queryAllSigaServlet").forward(request,response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
