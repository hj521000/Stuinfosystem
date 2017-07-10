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
    
    <title>My JSP 'stuinfo.jsp' starting page</title>
    
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
    	String choice = request.getParameter("student");
    	String key = request.getParameter("tiaojian");
    	ResultSet rs=null; 
    	String str="";
      	query.connect();
    	int choice_int = Integer.parseInt(choice);
    	switch(choice_int){
    		case 1:str="select stu_id,stu_name,stu_class,stu_birth from students where stu_id='"+key+"';";break;
    		case 2:str="select stu_id,stu_name,stu_class,stu_birth from students where stu_class='"+key+"';";break;
    		case 3:str="select stu_id,stu_name,stu_class,stu_birth from students where stu_birth='"+key+"';";break;
    		case 4:str="select tea_id,tea_name,tea_course,tea_birth,tea_degree from teachers where tea_degree='"+key+"';";break;
    		case 5:str="select tea_id,tea_name,tea_course,tea_birth,tea_degree from teachers where tea_course='"+key+"';";break;
    		case 6:str="select tea_id,tea_name,tea_course,tea_birth,tea_degree from teachers where tea_birth='"+key+"';";break;
    		case 7:str="select cou_id,cou_class,cou_time,cou_hour,cou_teacher from courses where cou_time='"+key+"';";break;
    		case 8:str="select cou_id,cou_class,cou_time,cou_hour,cou_teacher from courses where cou_hour='"+key+"';";break;
    		case 9:str="select cou_id,cou_class,cou_time,cou_hour,cou_teacher from courses where cou_id='"+key+"';";break;
    		case 10:str="select cou_id,cou_class,cou_time,cou_hour,cou_teacher from courses where cou_teacher='"+key+"';";break;
    		case 11:str="select students.stu_id,students.stu_name,students.stu_class,scores.score from students,scores where students.stu_id='"+key+"';";break;
    		case 12:str="select students.stu_id,students.stu_name,students.stu_class,scores.score from students,scores where students.stu_class='"+key+"';";break;
    		case 13:str="select students.stu_id,students.stu_name,students.stu_class,scores.score from students,scores where courses.cou_id='"+key+"';";break;
    		
    	}
    	rs=query.select(str);
    	rs.next();
    	out.print("<h2>您要查询的信息:</h2>");
    	out.print(rs.getString(1)+" | "+rs.getString(2)+" | "+rs.getString(3)+" | "+rs.getString(4));
    
     %>
  </body>
</html>
