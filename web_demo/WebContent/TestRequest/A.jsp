<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setAttribute("name", "张三");
	//转发:服务器内部进行页面跳转的方式之一
	request.getRequestDispatcher("B.jsp").forward(request, response);
	System.out.println("转发后仍然回到之前的页面进行数据处理");


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