<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="query" class="database.dbfunction" scope="page"></jsp:useBean>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regist.jsp' starting page</title>
    
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
        if(!rs.next())
        {
        	str="insert into user(username,password)values('"+_user+"','"+_password+"');"; 
        	query.update(str);
        }else{
        	out.print("<script>alert('添加失败！即将转入登陆界面'); window.location='login.jsp' </script>"); 
        }
    	out.println("提交信息成功！");
    	out.print("本页面将在3秒后自动跳转到登陆页面！");
    	out.print("<meta   http-equiv="+"refresh"+"  content=" +"3;url=login.jsp"+">");
     %>
    
  </body>
</html>
