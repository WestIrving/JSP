<%@ page language="java" import="java.io.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	PrintWriter pw=response.getWriter();

	pw.write("西安邮电大学");
	
	//JSPWriter 和 PrintWriter的区别
	//1、JspWriter属于JSP内置对象，使用时无需实例化，而PrintWriter不属于内置对象，使用时要实例化
	//2、JspWriter将服务端输出数据时采用UTF-8格式编码格式，同时制定了服务端向客户端浏览器传输的数据为html，
	//			    并且要求客户端浏览器以UTF-8的格式进行解码
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