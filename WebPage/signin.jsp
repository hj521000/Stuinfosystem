<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="query" class="database.dbfunction" scope="page"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'signin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body> 
    <%
    	String _user = request.getParameter("user"); 
		String _password = request.getParameter("password"); 
 		ResultSet rs=null; 
      	query.connect();  
      	String str="select username,password from user where username='"+_user+"';"; 
        rs=query.select(str);
        rs.next(); //取得的结果集rs的指针指向第一条之前，必须执行一次rs.next()才能指向第一行
        String psw = rs.getString("password");
        if(_user.equals("admin")&&psw.equals("123456"))
        {
        	out.print("<script> window.location='admin.jsp' </script>"); 
        }else if(psw.equals(_password)){
        	out.print("<script> window.location='user.jsp' </script>"); 
        }else{
        	out.print("<script>alert('账户密码错误！即将返回登陆界面'); window.location='login.jsp' </script>");
        }
     %>
  </body>
</html>