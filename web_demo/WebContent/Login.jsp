<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String message=(String)request.getAttribute("message");

	String username="";
	String password="";
	//通过requsest对象获取客户端cookie信息
	Cookie [] cks=request.getCookies();
	for(int i=0;cks!=null&&i<cks.length;i++){
		//通过键名称来判断是否为username，password
		if(cks[i].getName().equals("uname")){
			username=cks[i].getValue();
		}	
		if(cks[i].getName().equals("pword")){
			password=cks[i].getValue();
		}
	}
	if(!username.equals("")&&!password.equals("")){
		//response.sendRedirect(request.getContextPath()+"/Mananger/mananger.jsp");
		request.getRequestDispatcher("/Mananger/mananger.jsp").forward(request, response);
	}
%>
<%-- <%@ include file="First.jsp" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="checkLogin.jsp" method="post">
		<table align="center" border="1" cellpadding="0">
			<tr>
				<td>用户名 :<input type="text" name="username"></td>
			</tr>
			<tr>
				<td>密　码 :<input type="password" name="password"></td>
			</tr>
			<tr>
				<td> <input type="checkbox" values="登录" name="ck">一周内自动登录</td>
			</tr>
			<tr id="t1">
				<td> <input type="submit" values="登录"></td>
			</tr>
			<tr id="t2">
				<td><input type="reset" values="重置"></td>
			</tr>
		</table>
	</form>
	<% if(message!=null){%>
	<%=message %>
	<%} %>
</body>
</html>