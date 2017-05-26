<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" import="com.empoperate.*,java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	empdisplay eo=new empdisplay();
	List<Map<String,String>> list = new ArrayList<Map<String,String>>();
	list=eo.getAllEmp();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
</style>
<body bgcolor="#EFC61C">
<table width="100%" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td>员工编号</td><td>员工姓名</td><td>入职日期</td><td>部门编号</td>
	</tr>
	<%
		for(Map map:list){
	%>
	<tr>
		<td><%=map.get("empno") %></td>
		<td><%=map.get("ename") %></td>
		<td><%=map.get("hiredate") %></td>
		<td><%=map.get("deptno") %></td>
	</tr>
	<%
		}
	%>
</table>
</body>
</html>