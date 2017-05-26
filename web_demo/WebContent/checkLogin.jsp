<%@ page language="java" import="com.user.Operate.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//指定post提交的编码格式
	request.setCharacterEncoding("utf-8");
//获取用户名
	String username=request.getParameter("username");
	//获取密码
	String password=request.getParameter("password");
	//将用户名和密码在数据库里验证
	UserLogin ul=new UserLogin();
	int flag=ul.CheckLogin(username, password);
	if(flag==1){
		//登录成功后的跳转
		request.getRequestDispatcher("Mananger/mananger.jsp").forward(request, response);
	}else{ 
		request.setAttribute("message", "用户名或密码错误");
		request.getRequestDispatcher("Login.jsp").forward(request, response);
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