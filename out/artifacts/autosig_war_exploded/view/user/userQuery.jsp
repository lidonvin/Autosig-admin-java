<%@ page import="java.util.List" %>
<%@ page import="com.longsys.entity.User" %>
<%--
  Created by IntelliJ IDEA.
  User: donvin.li
  Date: 2021/10/14
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录城市管理</title>
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
<script src="/js/jquery-1.9.1.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
    <script src="/assets/js/date-time/moment-with-locales.js"></script>
    <script src="/assets/js/bootstrap-datetimepicker.min.js"></script>
</head>

<body>

<form   class="form-inline" action="QueryAddrByAnyServlet" method="post">
	<div class="row alert alert-info" style="margin:0px; padding:0px; padding-left:50px;">
    	<div class="form-group">
        	<label>用户名</label>
            <input type="text" class="form-control" name="username" placeholder="请输入用户名">
        </div>
        <input type="submit" class="btn btn-danger" value="查询">
    	<a href="../../view/user/userAdd.jsp" class="btn btn-success">添加用户</a>
    </div>
	<div class="row"  style="padding:15px;">
    	<table class="table" >
        	<tr>
            	<th>ID</th>
            	<th>账号</th>
                <th>姓名</th>
                <th>操作</th>
            </tr>
            <%
                //获取request域中的数据
                List<User> users = (List<User> )request.getAttribute("users") ;
                for(User user:users){
            %>
            <tbody>
            <tr>
                <td><%=user.getId()%></td>
                <td><%=user.getUsername()%></td>
                <td><%=user.getName()%></td>
                <td> <a href="QueryUserByUsernameServlet?username=<%=user.getUsername()%>">修改</a>
                    <a href="DeleteUserServlet?id=<%=user.getId()%>">删除</a></td>
            </tr>
            </tbody>
            <%
                }
            %>
<%--            <tr>--%>
<%--            	<td>10001</td>--%>
<%--                <td><a href="#">张三 </a></td>--%>
<%--                <td>男</td>--%>
<%--                <td>技术部</td>--%>
<%--                <td>19</td>--%>
<%--                <td>1922222222</td>--%>
<%--                 <td>zhangsan123</td>--%>
<%--            	<td>--%>
<%--                	<a href="employeeUpdate.jsp">修改</a>--%>
<%--                    <a href="#">删除</a>--%>
<%--                </td>	--%>
<%--            </tr>--%>
<%--                      <tr>--%>
<%--            	<td>10001</td>--%>
<%--                <td>张三</td>--%>
<%--                <td>男</td>--%>
<%--                <td>技术部</td>--%>
<%--                <td>19</td>--%>
<%--                <td>1922222222</td>--%>
<%--                 <td>zhangsan123</td>--%>
<%--            	<td>--%>
<%--                	<a href="employeeUpdate.jsp">修改</a>--%>
<%--                    <a href="#">删除</a>--%>
<%--                </td>	--%>
<%--            </tr>          <tr>--%>
<%--            	<td>10001</td>--%>
<%--                <td>张三</td>--%>
<%--                <td>男</td>--%>
<%--                <td>技术部</td>--%>
<%--                <td>19</td>--%>
<%--                <td>1922222222</td>--%>
<%--                 <td>zhangsan123</td>--%>
<%--            	<td>--%>
<%--                	<a href="employeeUpdate.jsp">修改</a>--%>
<%--                    <a href="#">删除</a>--%>
<%--                </td>	--%>
<%--            </tr>          <tr>--%>
<%--            	<td>10001</td>--%>
<%--                <td>张三</td>--%>
<%--                <td>男</td>--%>
<%--                <td>技术部</td>--%>
<%--                <td>19</td>--%>
<%--                <td>1922222222</td>--%>
<%--                 <td>zhangsan123</td>--%>
<%--            	<td>--%>
<%--                	<a href="employeeUpdate.jsp">修改</a>--%>
<%--                    <a href="#">删除</a>--%>
<%--                </td>	--%>
<%--            </tr>          <tr>--%>
<%--            	<td>10001</td>--%>
<%--                <td>张三</td>--%>
<%--                <td>男</td>--%>
<%--                <td>技术部</td>--%>
<%--                <td>19</td>--%>
<%--                <td>1922222222</td>--%>
<%--                 <td>zhangsan123</td>--%>
<%--            	<td>--%>
<%--                	<a href="employeeUpdate.jsp">修改</a>--%>
<%--                    <a href="#">删除</a>--%>
<%--                </td>	--%>
<%--            </tr>       --%>
        </table>
    
    </div>
</form>

</body>
</html>
