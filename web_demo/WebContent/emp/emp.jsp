<%@ page language="java" import="com.empoperate.*,java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	empdisplay eo=new empdisplay();
	List<Map<String,String>> list = new ArrayList<Map<String,String>>();
	Map map=new HashMap();
	list=eo.getAllEmp();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="empdisplay.jsp" method="get">
		<table>
			<tr>
				<td>员工编号</td>
				<td>员工姓名</td>
				<td>员工工作</td>
				<td>经理编号</td>
				<td>入职日期</td>
				<td>员工总工资</td>
				<td>奖金</td>
				<td>部门编号</td>
			</tr>
			<tr>
				<td><%=list.get(0).get(0)  %></td>
				<td><%=list.get(0).get(1)  %></td>
				<td><%=list.get(0).get(2)  %></td>
				<td><%=list.get(0).get(3)  %></td>
				<td><%=list.get(0).get(4)  %></td>
				<td><%=list.get(0).get(5)  %></td>
				<td><%=list.get(0).get(6)  %></td>
				<td><%=list.get(0).get(7)  %></td>
			</tr>
			<tr>
				<td><%=list.get(1).get(0)  %></td>
				<td><%=list.get(1).get(1)  %></td>
				<td><%=list.get(1).get(2)  %></td>
				<td><%=list.get(1).get(3)  %></td>
				<td><%=list.get(1).get(4)  %></td>
				<td><%=list.get(1).get(5)  %></td>
				<td><%=list.get(1).get(6)  %></td>
				<td><%=list.get(1).get(7)  %></td>
			</tr>
			<tr>
				<td><%=list.get(2).get(0)  %></td>
				<td><%=list.get(2).get(1)  %></td>
				<td><%=list.get(2).get(2)  %></td>
				<td><%=list.get(2).get(3)  %></td>
				<td><%=list.get(2).get(4)  %></td>
				<td><%=list.get(2).get(5)  %></td>
				<td><%=list.get(2).get(6)  %></td>
				<td><%=list.get(2).get(7)  %></td>
			</tr>
			<tr>
				<td><%=list.get(3).get(0)  %></td>
				<td><%=list.get(3).get(1)  %></td>
				<td><%=list.get(3).get(2)  %></td>
				<td><%=list.get(3).get(3)  %></td>
				<td><%=list.get(3).get(4)  %></td>
				<td><%=list.get(3).get(5)  %></td>
				<td><%=list.get(3).get(6)  %></td>
				<td><%=list.get(3).get(7)  %></td>
			</tr>
			<tr>
				<td><%=list.get(4).get(0)  %></td>
				<td><%=list.get(4).get(1)  %></td>
				<td><%=list.get(4).get(2)  %></td>
				<td><%=list.get(4).get(3)  %></td>
				<td><%=list.get(4).get(4)  %></td>
				<td><%=list.get(4).get(5)  %></td>
				<td><%=list.get(4).get(6)  %></td>
				<td><%=list.get(4).get(7)  %></td>
			</tr>
			<tr>
				<td><%=list.get(5).get(0)  %></td>
				<td><%=list.get(5).get(1)  %></td>
				<td><%=list.get(5).get(2)  %></td>
				<td><%=list.get(5).get(3)  %></td>
				<td><%=list.get(5).get(4)  %></td>
				<td><%=list.get(5).get(5)  %></td>
				<td><%=list.get(5).get(6)  %></td>
				<td><%=list.get(5).get(7)  %></td>
			</tr>
			<tr>
				<td><%=list.get(6).get(0)  %></td>
				<td><%=list.get(6).get(1)  %></td>
				<td><%=list.get(6).get(2)  %></td>
				<td><%=list.get(6).get(3)  %></td>
				<td><%=list.get(6).get(4)  %></td>
				<td><%=list.get(6).get(5)  %></td>
				<td><%=list.get(6).get(6)  %></td>
				<td><%=list.get(6).get(7)  %></td>
			</tr>
			<tr>
				<td><%=list.get(7).get(0)  %></td>
				<td><%=list.get(7).get(1)  %></td>
				<td><%=list.get(7).get(2)  %></td>
				<td><%=list.get(7).get(3)  %></td>
				<td><%=list.get(7).get(4)  %></td>
				<td><%=list.get(7).get(5)  %></td>
				<td><%=list.get(7).get(6)  %></td>
				<td><%=list.get(7).get(7)  %></td>
			</tr>
			
	</table>
	</form>
</body>
</html>