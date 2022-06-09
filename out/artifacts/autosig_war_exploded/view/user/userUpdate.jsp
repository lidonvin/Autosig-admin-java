<%@ page import="com.longsys.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改地址</title>
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<script src="/js/jquery-1.9.1.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
</head>

<body>

<%
	//获取request域中的数据
	User user = (User) request.getAttribute("user") ;
%>
<form  class="form-horizontal" action="UpdateUserServlet" method="post">
		<h5 class="page-header alert-info" style="margin:0px; padding:10px; margin-bottom:10px;">
        基本信息
        </h5>
		<input hidden type="text" name="id" value="<%=user.getId()%>" placeholder="请输入ID"/>
        <!-- 111 -->
        <div class="row">
        	<div class="col-sm-5"> 
            	<div class="form-group">
                	<label class="col-sm-3 control-label">用户名</label>
                	<div  class="col-sm-9">
                    	<input type="text" class="form-control" name="username" value="<%=user.getUsername()%>" placeholder="请输入登录邮箱"/>
                    </div>
                </div>
            </div>
        	<div class="col-sm-5"> 
            	<div class="form-group">
                	<label class="col-sm-3 control-label">姓名</label>
                	<div  class="col-sm-9">
                    	<input type="text" class="form-control" name="name" value="<%=user.getName()%>" placeholder="请输入登录城市"/>
                    
                    </div>
                </div>
            </div>
        </div>
       <!-- 111 -->
        <!-- 222 -->
        <div class="row">
        	<div class="col-sm-5"> 
            	<div class="form-group">
                	<label class="col-sm-3 control-label">修改密码</label>
                	<div  class="col-sm-9">
                    	<input type="password" class="form-control" name="password" value="" placeholder="请输入密码"/>
                    </div>
                </div>
            </div>
        </div>
       <!-- 2222 -->
       	<h5 class="page-header alert-info" style="margin:0px; padding:10px; margin-bottom:10px;">
        授权信息
        </h5>
                <!-- 222 -->
        <div class="row">
        	<div class="col-sm-5"> 
            	<div class="form-group">
                	<label class="col-sm-3 control-label">员工帐号</label>
                	<div  class="col-sm-9">
                    	<input type="text" class="form-control" placeholder="请输入您的帐号"/> 
                    </div>
                </div>
            </div>
        	<div class="col-sm-5"> 
            	<div class="form-group">
                	<label class="col-sm-3 control-label">授权密码</label>
                	<div  class="col-sm-9">
                    	<input type="password" class="form-control" name="pwd" placeholder="请输入原始密码"/>
                    </div>
                </div>
            </div>
        </div>
       <!-- 2222 -->
        
        <div class="row">
        	<div class="col-sm-3 col-sm-offset-4">
            	<input type="submit" class="btn btn-success" value="修改">
                <input type="reset" class="btn  btn-danger" value="重置">
            </div>
        </div>
  

</form>

</body>
</html>
