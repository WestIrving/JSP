<%@ page language="java" import="com.empoperate.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String empno=request.getParameter("empno");
	addemp ae=new addemp();
	int flag=ae.delemp(Integer.parseInt(empno));
	if(flag!=0){
		response.sendRedirect(request.getContextPath()+"/Mananger/emp.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#EFC61C">
</body>
</html>