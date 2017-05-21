<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<frameset rows="80,*" cols="*" >
	<frame src="Mananger/top.jsp" />
	<frameset cols="120,*">
	<frame src="Mananger/left.jsp" />
	<frame src="Mananger/right.jsp" name="mainFrame" />
	</frameset>
</frameset>
<noframes>
	<body>
		您的浏览器不支持框架集，请尝试其他浏览器
	</body>
</noframes>

</html>