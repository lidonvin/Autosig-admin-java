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

@WebServlet(name = "updateSigaBynameServlet",urlPatterns = "/updateSiga")
public class updateSigaBynameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String enusername=request.getParameter("username").replace(" ","+");
        String sign=request.getParameter("sign");
        String username= AesCbc.decrypt(enusername);
        String name=request.getParameter("name");
        String ename=request.getParameter("ename");
        String position=request.getParameter("position");
        String department=request.getParameter("department");
        String mobile=request.getParameter("mobile");
        String tel=request.getParameter("tel");
        if (username!=null){
            Signatureinfo signatureinfo=new Signatureinfo(username,name,ename,position,department,mobile,tel);
            ISignatureService iSignatureService=new SignatureService();
            iSignatureService.updateSignatureinfo(signatureinfo,sign);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
