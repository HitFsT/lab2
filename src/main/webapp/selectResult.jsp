<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询结果</title>
</head>
<body>
	<p>Title: <s:property value="book.title"/></p>
	<p>ISBN: <s:property value="book.ISBN"/></p>
	<p>Publisher: <s:property value="book.publisher"/></p>
	<p>PublishDate: <s:property value="book.publishDate"/></p>
	<p>Price: <s:property value="book.price"/></p>
	<p>Author: <s:property value="author.name"/></p>
	<p>Age: <s:property value="author.age"/></p>
	<p>Country: <s:property value="author.country"/></p>
</body>
<s:a action="home">返回主页</s:a>
</html>