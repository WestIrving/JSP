<%@ page language="java" import="com.empoperate.*,java.util.*,java.sql.Date" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("UTF-8");
	String empno=request.getParameter("empno");
	Map<String,Object> map=new HashMap<String,Object>();
	List<Object> list=new ArrayList<Object>();
	addemp ae=new addemp();
	map=ae.getoneEmp(Integer.parseInt(empno));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#EFC61C">
	<form action="toupdate.jsp" method="post">
		<table>
			<tr>
				<td>员工编号:<input type="text" name="empno" value="<%=map.get("empno")%>"></td>
			</tr>
			<tr>
				<td>员工姓名:<input type="text" name="ename" value="<%=map.get("ename")%>"></td>
			</tr>
			<tr>
				<td>入职日期:<input type="text" name="hiredate" value="<%=map.get("hiredate")%>"></td>
			</tr>
			<tr>
			</tr>
			<tr>
				<td><input type="submit"  value="更新"></td>
			</tr>
		</table>
	</form>
</body>
</html>