<%@ page language="java" import="java.util.*,com.Test.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int i=0;
	if(i<10){
		System.out.println("");
	}
	for(int j=0;j<10;j++){
		
	}
	while(i<10){
		i++;
	}
	String [] a=new String[10];
	String s=new String("abc");
	List list=new ArrayList();
	list.add("aaaaaa");
	class B{
		//内部内
	}
	
	{
		//初始化块
	}
	A c=new A();
	int flag=c.getA(); //利用倒包来调用方法
	out.print(list);
%>
<% //第二个小脚本  %>
<%! 
	public void FirstMethod(){
		//声明方法
	}
%>
<%
	this.FirstMethod();//方法调用(不常使用)
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#p1{color:red; border: 1px solid red; display: inline-block;text-decoration: none;}
#p1 a:HOVER {
}
</style>
</head>
<body>
	<%=flag %>
	<p id="p1">我的第一个JSP网页文件</p>
	<input type="text" value="<%=list.get(0) %>">;
	<%=1>1 %>
</body>
</html>