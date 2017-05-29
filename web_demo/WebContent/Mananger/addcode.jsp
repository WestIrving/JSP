<%@ page language="java" import="com.empoperate.*,java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setCharacterEncoding("utf-8");
	String empno=request.getParameter("empno");
	String ename=request.getParameter("ename");
	String job=request.getParameter("job");
	String mgr=request.getParameter("mgr");
	String hiredate=request.getParameter("hiredate");
	String sal=request.getParameter("sal");
	String comm=request.getParameter("comm");
	String deptno=request.getParameter("deptno");
	int empno1=Integer.parseInt(empno);
	int mgr1=Integer.parseInt(mgr);
	int sal1=Integer.parseInt(sal);
	int comm1=Integer.parseInt(comm);
	int deptno1=Integer.parseInt(deptno);
	Date hiredate1=Date.valueOf(hiredate);
	addemp ae=new addemp();
	//拿到数据库比对
	int flag=ae.addemps(empno1,ename,job,mgr1,hiredate1,sal1,comm1,deptno1);
	if(flag==1){
		response.sendRedirect(request.getContextPath()+"/Mananger/emp.jsp");
	}
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