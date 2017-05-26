<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	System.out.println("数据处理");
    //重定向: 服务器进行页面跳转的另一种方式
    response.sendRedirect(request.getContextPath()+"/"+"Testresponse/B.jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>A</title>
</head>
<body>

</body>
</html>