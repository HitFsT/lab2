<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@ page import="model.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>搜索结果</title>
</head>
<body>
<s:iterator value="results">
	<p>Author: <s:property value="author.name"/></p>
	<p>Title:
	<s:a action="select">
		<s:param name="ISBN"><s:property value="book.ISBN"/></s:param>
		<s:property value="book.title"/>
	</s:a></p>
	<p>ISBN: <s:property value="book.ISBN"/></p>
	<form id="delete" action="delete?ISBN=<s:property value="book.ISBN"/>" method="post">
    	<button type="submit" id="deleteSubmit" name="deleteSubmit" class="btn">Delete</button>
	</form>
</s:iterator>
<s:a action="home">返回主页</s:a>
</body>
</html>