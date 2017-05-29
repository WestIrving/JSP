<%@ page language="java" import="com.empoperate.*,java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
	.u1 input{
		width=20px;
		height=10px;
		float: left;
	}
</style>
<body bgcolor="#EFC61C">
<form action="addcode.jsp" method="post">
		<table align="center" border="1" cellpadding="0">
			<tr>
				<td>员工编号<li><input type="text" name="empno"></li></td>
			</tr>
			<tr>
				<td>员工姓名<li><input type="text" name="ename"></li></td>
			</tr>
			<tr>
				<td>员工工作<li><input type="text" name="job"></li></td>
			</tr>
			<tr>
				<td>经理编号<li><input type="text" name="mgr"></li></td>
			</tr>
			<tr>
				<td>入职如期<li><input type="text" name="hiredate"></li></td>
			</tr>
			<tr>
				<td>员工工资<li><input type="text" name="sal"></li></td>
			</tr>
			<tr>
				<td>员工奖金<li><input type="text" name="comm"></li></td>
			</tr>
			<tr>
				<td>部门编号<li><input type="text" name="deptno"></li></td>
			</tr>
			<tr>
				<td> <input type="submit" values="添加"></td>
			</tr>
			<tr>
				<td><input type="reset" values="重置"></td>
			</tr>
		</table>
	</form>
	
</body>
</html>