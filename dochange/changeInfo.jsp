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
    
    <title>My JSP 'changeStu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="bg.jpeg">
    <%
    	//String stu_id = request.getParameter("stu_id");
    	//String stu_name = request.getParameter("stu_name");
    	//String stu_class = request.getParameter("stu_class");
    	//String stu_birth = request.getParameter("stu_birth");
    	String tea_id = request.getParameter("tea_id");
    	String tea_name = request.getParameter("tea_name");
    	String tea_birth = request.getParameter("tea_birth");
    	query.connect();
    	//String str = "update students set stu_name='"+stu_name+"',stu_class='"+stu_class+"',stu_birth='"+stu_birth+"'"+
    	//"where stu_id='"+stu_id+"'";
    	String str = "update teachers set tea_name='"+tea_name+"',stu_birth='"+tea_birth+"'"+
    	"where tea_id='"+tea_id+"'";
    	query.update(str);
    	out.print("修改成功");
    	out.print("<br><br><a href='admin.jsp'>返回上层</a> <a href='login.jsp'>返回首页</a>");
     %>
  </body>
</html>