<%@ page import="java.util.List" %>
<%@ page import="com.longsys.entity.Signatureinfo" %>
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
<title>签名1</title>
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
<script src="/js/jquery-1.9.1.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
    <script src="/assets/js/date-time/moment-with-locales.js"></script>
    <script src="/assets/js/bootstrap-datetimepicker.min.js"></script>
</head>

<body>
<%String sign=(String)request.getAttribute("sign");%>
<form   class="form-inline" action="querySignByAnyServlet" method="post">
	<div class="row alert alert-info" style="margin:0px; padding:0px; padding-left:50px;">
    	<div class="form-group">
            <input hidden type="text" name="sign" value="<%=sign%>" placeholder="请输入sign"/>
        	<label>ID</label>
            <input type="text" class="form-control" name="id" placeholder="请输入ID">
            <label>用户名</label>
            <input type="text" class="form-control" name="username" placeholder="请输入用户名">
            <label>姓名</label>
            <input type="text" class="form-control" name="name" placeholder="请输入姓名">
            <label>部门</label>
            <input type="text" class="form-control" name="department" placeholder="请输入部门">
            <div class="form-group">
                <label>开始时间</label>
                <!--指定 date标记-->
                <div class='input-group date' id='datetimepicker1'>
                    <input type='text' class="form-control" name="stime"/>
                    <span class="input-group-addon">
							<span class="glyphicon glyphicon-calendar"></span>
						</span>
                </div>
            </div>
            <div class="form-group">
                <label>结束时间</label>
                <!--指定 date标记-->
                <div class='input-group date' id='datetimepicker2'>
                    <input type='text' class="form-control" name="etime"/>
                    <span class="input-group-addon">
							<span class="glyphicon glyphicon-calendar"></span>
						</span>
                </div>
            </div>
        </div>
        <input type="submit" class="btn btn-danger" value="查询">
<%--    	<a href="../../view/employee/employeeAdd.jsp" class="btn btn-success">添加城市</a>--%>
    </div>
    <script type="text/javascript">
        $(function() {

            $('#datetimepicker1').datetimepicker({

                format: 'YYYY-MM-DD HH:mm',

                locale: moment.locale('zh-cn')

            });

            $('#datetimepicker2').datetimepicker({

                format: 'YYYY-MM-DD HH:mm',

                locale: moment.locale('zh-cn')

            });

        });
    </script>
	<div class="row"  style="padding:15px;">
    	<table class="table" >
        	<tr>
                <th>ID</th>
            	<th>用户名</th>
                <th>中文名</th>
                <th>英文名</th>
                <th>职位</th>
                <th>部门</th>
                <th>手机号</th>
                <th>电话号码</th>
                <th>操作</th>
            </tr>
            <%
                //获取request域中的数据
                List<Signatureinfo> signatureinfos = (List<Signatureinfo> )request.getAttribute("signatureinfos") ;
                for(Signatureinfo signatureinfo:signatureinfos){
            %>
            <tbody>
            <tr>
                <td><%=signatureinfo.getId()%></td>
                <td><%=signatureinfo.getUsername()%></td>
                <td><%=signatureinfo.getName()%></td>
                <td><%=signatureinfo.getEname()%></td>
                <td><%=signatureinfo.getPosition()%></td>
                <td><%=signatureinfo.getDepartment()%></td>
                <td><%=signatureinfo.getMobile()%></td>
                <td><%=signatureinfo.getTel()%></td>
                <td>
                    <a href="querySigaByIdServlet?id=<%=signatureinfo.getId()%>&sign=<%=sign%>&type=0">预览</a>
                    <a href="addSigaByIdServlet?id=<%=signatureinfo.getId()%>&sign=<%=sign%>">添加</a>
                    <a href="querySigaByIdServlet?id=<%=signatureinfo.getId()%>&sign=<%=sign%>&type=1">修改</a>
                    <a href="delSignByIdServlet?id=<%=signatureinfo.getId()%>&sign=<%=sign%>">删除</a>
                </td>
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
