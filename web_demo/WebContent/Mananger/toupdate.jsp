<%@ page language="java" import="com.empoperate.*,java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("UTF-8");
	String empno=request.getParameter("empno");
	String ename=request.getParameter("ename");
	String hiredate=request.getParameter("hiredate");
	addemp ae=new addemp();
	ae.update(Integer.parseInt(empno),ename,Date.valueOf(hiredate));
	response.sendRedirect(request.getContextPath()+"/Mananger/emp.jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>