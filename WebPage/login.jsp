<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登陆系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

  <body  background="bg.jpeg">

        
    <center>
     	<h1 align="center" >学生信息管理系统</h1> <br>
    <form action="signin.jsp" method="post" >
      <table border="0">
 	      <tr> 
 	      	<td>用户名：</td>
 	      	<td><input type="text" name="user" /> </td>
 	      </tr>
   	      <tr>
   	       	<td>密码：</td>
   	       	<td><input type="text" name="password" /> </td>
   	      </tr>
   	      <tr>
            <td align="center" >
      			<input type="button" value="注册" onclick="window.location.href='signup.jsp';" />
      		</td>
      		<td align="center" >
      		  <input type="submit" value="登陆">
      		</td>
      	  </tr>
      	</table>
    </form>
  </center>
  </body>
</html>
