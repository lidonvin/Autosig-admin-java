package com.longsys.servlet;

import com.longsys.service.ISignatureService;
import com.longsys.service.SignatureService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "delSignByIdServlet",urlPatterns = "/delSignByIdServlet")
public class delSignByIdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ISignatureService iSignatureService=new SignatureService();
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("utf-8");
        String id=request.getParameter("id");
        String sign=request.getParameter("sign");
        if (sign.equals("1")){
            boolean result=iSignatureService.delSignById(id,sign);
            if (result){
                response.getWriter().print("删除成功");
                request.getRequestDispatcher("queryAllSigaServlet").forward(request,response);
            }else {
                response.getWriter().print("删除失败");
            }
        }
        else if (sign.equals("0")){
            response.getWriter().print("默认签名(签名1)不允许删除！");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
