<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@ page import="model.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有作者</title>
</head>
<body>
<%int i = 1;%>
<s:iterator value="authors">
	<p>Author<%=i%><%i++;%>: <s:property value="author.name"/></p>
</s:iterator>
<s:a action="home">返回主页</s:a>
</body>
</html>