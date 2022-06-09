<%@ page import="com.longsys.entity.Signatureinfo" %>
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
	Signatureinfo signatureinfo = (Signatureinfo)request.getAttribute("signatureinfo") ;
	String sign=(String)request.getAttribute("sign") ;
%>
<form  class="form-horizontal" action="updateSigaByIdServlet" method="post">
		<h5 class="page-header alert-info" style="margin:0px; padding:10px; margin-bottom:10px;">
        基本信息
        </h5>
		<input hidden type="text" name="id" value="<%=signatureinfo.getId()%>" placeholder="请输入ID"/>
		<input hidden type="text" name="sign" value="<%=sign%>" placeholder="请输入sign"/>
        <!-- 111 -->
        <div class="row">
        	<div class="col-sm-5"> 
            	<div class="form-group">
                	<label class="col-sm-3 control-label">中文名</label>
                	<div  class="col-sm-9">
                    	<input type="text" class="form-control" name="name" value="<%=signatureinfo.getName()%>" placeholder="请输入中文名"/>
                    </div>
                </div>
            </div>
        	<div class="col-sm-5"> 
            	<div class="form-group">
                	<label class="col-sm-3 control-label">英文名</label>
                	<div  class="col-sm-9">
                    	<input type="text" class="form-control" name="ename" value="<%=signatureinfo.getEname()%>" placeholder="请输英文名"/>
                    
                    </div>
                </div>
            </div>
        </div>
       <!-- 111 -->
        <!-- 222 -->
        <div class="row">
        	<div class="col-sm-5"> 
            	<div class="form-group">
                	<label class="col-sm-3 control-label">职位</label>
                	<div  class="col-sm-9">
                    	<input type="text" class="form-control" name="position" value="<%=signatureinfo.getPosition()%>" placeholder="请输入职位"/>
                    </div>
                </div>
            </div>
        	<div class="col-sm-5"> 
            	<div class="form-group">
                	<label class="col-sm-3 control-label">部门</label>
                	<div  class="col-sm-9">
                    	<input type="text" class="form-control" name="department" value="<%=signatureinfo.getDepartment()%>" placeholder="请输入部门"/>
                    
                    </div>
                </div>
            </div>
        </div>
       <!-- 2222 -->
		<div class="row">
			<div class="col-sm-5">
				<div class="form-group">
					<label class="col-sm-3 control-label">手机号</label>
					<div  class="col-sm-9">
						<input type="text" class="form-control" name="mobile" value="<%=signatureinfo.getMobile()%>" placeholder="请输入手机号"/>
					</div>
				</div>
			</div>
			<div class="col-sm-5">
				<div class="form-group">
					<label class="col-sm-3 control-label">分机号</label>
					<div  class="col-sm-9">
						<input type="text" class="form-control" name="tel" value="<%=signatureinfo.getTel()%>" placeholder="请输入分机号"/>

					</div>
				</div>
			</div>
		</div>
               <!-- 3333 -->
        <div class="row">
        	<div class="col-sm-5"> 
            	<div class="form-group">
                	<label class="col-sm-3 control-label">公司</label>
                	<div  class="col-sm-3">
                    	<select class="form-control" name="type">
                        	<option value="0">深圳市江波龙电子股份有限公司</option>
                        	<option value="1">上海江波龙数字技术有限公司</option>
                            <option value="2">上海江波龙电子有限公司</option>
                        </select>
                    </div>
                </div>
            </div>
<%--        	<div class="col-sm-5"> --%>
<%--            	<div class="form-group">--%>
<%--                	<label class="col-sm-3 control-label">Token</label>--%>
<%--                	<div  class="col-sm-9">--%>
<%--                    	<input type="text" class="form-control" value="<%=signatureinfo.getToken()%>" placeholder="请输入Token"/>--%>
<%--                    --%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>
       <!-- 3333 -->
		<!-- 4444 -->
<%--		<div class="row">--%>
<%--			<div class="col-sm-5">--%>
<%--				<div class="form-group">--%>
<%--					<label class="col-sm-3 control-label">登录终端</label>--%>
<%--					<div  class="col-sm-9">--%>
<%--						<input type="text" class="form-control" value="<%=address.getClient()%>" placeholder="请输入终端类型"/>--%>

<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--		</div>--%>
		<!-- 4444 -->
       	<h5 class="page-header alert-info" style="margin:0px; padding:10px; margin-bottom:10px;">
        授权信息
        </h5>
                <!-- 222 -->
        <div class="row">
        	<div class="col-sm-5"> 
            	<div class="form-group">
                	<label class="col-sm-3 control-label">帐号</label>
                	<div  class="col-sm-9">
                    	<input type="text" class="form-control" placeholder="请输入您的帐号"/> 
                    </div>
                </div>
            </div>
        	<div class="col-sm-5"> 
            	<div class="form-group">
                	<label class="col-sm-3 control-label">密码</label>
                	<div  class="col-sm-9">
                    	<input type="text" class="form-control" placeholder="请输入授权密码"/> 
                    
                    </div>
                </div>
            </div>
        </div>
       <!-- 2222 -->
        
        <div class="row">
        	<div class="col-sm-3 col-sm-offset-4">
            	<input type="submit" class="btn btn-success" value="修改签名">
                <input type="reset" class="btn  btn-danger" value="重置信息">
            </div>
        </div>
  

</form>

</body>
</html>
