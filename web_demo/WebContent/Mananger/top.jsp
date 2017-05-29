<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#50BDFB">
	西安邮电大学XXX管理系统                               欢迎<%=session.getAttribute("username") %>同学
	当前访问量为:<%=application.getAttribute("count") %>个
</body>
</html>