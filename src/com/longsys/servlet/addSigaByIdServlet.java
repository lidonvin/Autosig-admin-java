package com.longsys.servlet;

import com.longsys.service.ISignatureService;
import com.longsys.service.SignatureService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addSigaByIdServlet",urlPatterns = "/addSigaByIdServlet")
public class addSigaByIdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ISignatureService iSignatureService=new SignatureService();
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("utf-8");
        String id=request.getParameter("id");
        String sign=request.getParameter("sign");
        //第一套签名只能复制到第二套签名，且只能从EHR获取，不能手动添加。
        if (sign.equals("0")){
            boolean result=iSignatureService.copySignatureinfoById(id,sign);
            if(result){
                //request.getRequestDispatcher("queryAllSigaServlet").forward(request,response);
                response.getWriter().print("添加第二套签名成功，请切换到【签名2管理】查看或修改。");
            }else {
                response.getWriter().print("失败！可能的错误：该用户名已有第二套签名。");
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
