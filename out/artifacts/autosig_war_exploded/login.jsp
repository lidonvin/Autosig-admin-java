<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>邮件签名管理系统</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="icon" href="image/longsys.ico">
<script src="js/jquery-1.9.1.min.js"></script>  
<script src="assets/js/bootstrap.min.js"></script>
<style  type="text/css">

body{ 
background:url(images/bg.jpg);
background-position:center;
background-repeat:no-repeat;
background-size:cover;/*让背景基于容器*/
background-attachment:fixed;/*当内容高度大雨图片高度，背景图像的位置相对viewport固定*/
margin-left:auto;
margin-right:auto;
margin-top:200px;
width:20em;
}



</style>
</head>

<body>
<form action="LoginServlet" method="post">
	<div class="form-group">
    	<label class="sr-only" for="userId">帐号</label>
        <div class="input-group">
        	<div class="input-group-addon">帐号</div>
        	<input type="text" class="form-control" id="userId" name="username" placeholder="请输入帐号"/>
         </div>
    </div>
	<div class="form-group">
    	<label class="sr-only" for="userId">密码</label>
        <div class="input-group">
        	<div class="input-group-addon">密码</div>
        	<input type="password" class="form-control" id="userId" name="password" placeholder="请输入密码"/>
         </div>
    </div>
	<!-- 按钮-->
    <input type="submit" style="width:280px;" value="登 录" class="btn btn-success"/>
</form>


</body>
</html>
