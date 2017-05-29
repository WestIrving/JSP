<%@ page language="java" import="com.user.Operate.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//指定post提交的编码格式
	request.setCharacterEncoding("utf-8");
//获取用户名
	String username=request.getParameter("username");
	//获取密码
	String password=request.getParameter("password");
	String ck=request.getParameter("ck");
	
	//将用户名和密码在数据库里验证
	UserLogin ul=new UserLogin();
	int flag=ul.CheckLogin(username, password);
	if(flag==1){
		//-----------------在线人数功能部分:
		Integer it=(Integer)application.getAttribute("count");
		if(it==null){
			application.setAttribute("count", 1);
		}else{
			it=it+1;
			application.setAttribute("count", it);
		}
		
		session.setAttribute("username", username);
		//--------------页面间数据共享功能部分,设置sesssion存活时间为20s
		session.setMaxInactiveInterval(20);  //单位:ms
		
		//--------------Cookie保存用户数据，实现免登陆功能部分
		if(ck!=null&&ck.equals("on")){
			//1、实例化cookie对象,同时通过构造方法传入参数
			Cookie cookie1=new Cookie("uname",username);
			Cookie cookie2=new Cookie("pword",password);
			//步骤2、设置Cookie有效期，默认为从浏览器的打开到关闭   ---单位为秒 s
			cookie1.setMaxAge(120);
			cookie2.setMaxAge(120);
			//步骤3、利用response对象将cookie对象写入到客户端硬盘(利用序列化技术)
			response.addCookie(cookie1);
			response.addCookie(cookie2);
			
		}
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