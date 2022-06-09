<%@ page import="com.longsys.entity.Log" %>
<%@ page import="java.util.List" %><%--
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
<title>签名2</title>
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="/assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
<script src="/js/jquery-1.9.1.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
	<script src="/assets/js/date-time/moment-with-locales.js"></script>
	<script src="/assets/js/bootstrap-datetimepicker.min.js"></script>
</head>

<body>

<form    class="form-inline" action="QueryLogByAnyServlet" method="post">
	<div class="row alert alert-info" style="margin:0px; padding:0px; padding-left:50px;">
    	<div class="form-group">
        	<label>登录邮箱</label>
            <input type="text" class="form-control" name="mail" placeholder="请输入登录邮箱">
			<label>登录方式</label>
			<input type="text" class="form-control" name="type" placeholder="请输入登录设备类型">
			<label>登录IP</label>
			<input type="text" class="form-control" name="ip" placeholder="请输入IP地址">
			<div class="form-group">
				<label>开始时间：</label>
				<!--指定 date标记-->
				<div class='input-group date' id='datetimepicker1'>
					<input type='text' class="form-control" name="stime"/>
					<span class="input-group-addon">
							<span class="glyphicon glyphicon-calendar"></span>
						</span>
				</div>
			</div>
			<div class="form-group">
				<label>结束时间：</label>
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
    	<a href="departmentAdd.html" class="btn btn-success">添加日志信息</a>
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
            	<th>登录时间</th>
				<th>登录IP</th>
                <th>登录邮箱</th>
                <th>登录方式</th>
				<th>IP类型</th>
				<th>创建时间</th>
				<th>操作</th>
            </tr>
			<%
				//获取request域中的数据
				List<Log> logs = (List<Log> )request.getAttribute("logs") ;
				for(Log log:logs){
					String iptype = null;
					String logtype=null;
					if(log.getType().length()>=22){
						logtype=log.getType().substring(0,21);
					}else {
						logtype=log.getType();
					}

					if(log.getIs_diff().equals("0")){
						iptype="首次登录";
					} else if(log.getIs_diff().equals("1")){
						iptype="小于60天";
					} else if(log.getIs_diff().equals("2")){
						iptype="大于60天";
					} else if(log.getIs_diff().equals("3")){
						iptype="历史异常";
					}  else if(log.getIs_diff().equals("4")){
						iptype="异常客户端";
					} else if(log.getIs_diff().equals("5")){
						iptype="正常客户端";}
			%>
			<tbody>
			<tr>
				<td><%=log.getId()%></td>
				<td><%=log.getTime()%></td>
				<td><%=log.getIp()%></td>
				<td><%=log.getMail()%></td>
				<td><%=logtype%></td>
				<td><%=iptype%></td>
				<td><%=log.getCreate_time()%></td>
				<td> <a href=" ">DELETE</a></td>
			</tr>
			</tbody>
			<%
				}
			%>
            <!-- <tr>
            	<td>10001</td>
                <td><a href="departmentInfo.html">技术部</a></td>
                <td>java程序员</td>
            	<td>
                	<a href="departmentUpdate.html">修改</a>
                    <a href="#">删除</a>
                </td>	
            </tr>
               <tr>
            	<td>10001</td>
                <td><a href="departmentInfo.html">技术部</a></td>
                <td>java程序员</td>
            	<td>
                	<a href="departmentUpdate.html">修改</a>
                    <a href="#">删除</a>
                </td>	
            </tr>            <tr>
            	<td>10001</td>
                <td><a href="departmentInfo.html">技术部</a></td>
                <td>java程序员</td>
            	<td>
                	<a href="departmentUpdate.html">修改</a>
                    <a href="#">删除</a>
                </td>	
            </tr>            <tr>
            	<td>10001</td>
                <td><a href="departmentInfo.html">技术部</a></td>
                <td>java程序员</td>
            	<td>
                	<a href="departmentUpdate.html">修改</a>
                    <a href="#">删除</a>
                </td>	
            </tr>            <tr>
            	<td>10001</td>
                <td><a href="departmentInfo.html">技术部</a></td>
                <td>java程序员</td>
            	<td>
                	<a href="departmentUpdate.html">修改</a>
                    <a href="#">删除</a>
                </td>	
            </tr>            <tr>
            	<td>10001</td>
                <td><a href="departmentInfo.html">技术部</a></td>
                <td>java程序员</td>
            	<td>
                	<a href="departmentUpdate.html">修改</a>
                    <a href="#">删除</a>
                </td>	
            </tr>         -->
        </table>
    
    </div>
</form>

</body>
</html>
