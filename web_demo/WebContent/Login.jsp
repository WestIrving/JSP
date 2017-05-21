<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="First.jsp" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="checkLogin.jsp" method="get">
		<table align="center" border="1" cellpadding="0">
			<tr>
				<td>用户名 :<input type="text" name="username"></td>
			</tr>
			<tr>
				<td>密　码 :<input type="password" name="password"></td>
			</tr>
			<tr>
				<td> <input type="submit" values="登录"></td>
			</tr>
			<tr>
				<td><input type="reset" values="重置"></td>
			</tr>
		</table>
	</form>
</body>
</html>