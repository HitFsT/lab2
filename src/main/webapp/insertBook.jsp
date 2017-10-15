<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加书籍</title>
</head>
<body>
<h1 style=text-align:center;font-size:200%>添加一本书籍</h1>
<form id="addBook" action="addBook" method="post">
		<p>ISBN:<input id="ISBN" name="ISBN" type="text" value=""></p>
        <p>Title:<input id="title" name="title" type="text" value=""></p>
        <p>Author:<input id="author" name="author" type="text" value=""></p>
        <p>Publisher:<input id="publisher" name="publisher" type="text" value=""></p>
        <p>PublishDate:<input id="year" name="year" type="number" value="Year"><input id="month" name="month" type="number" value="month"><input id="day" name="day" type="number" value="Day"></p>
        <p>Price:<input id="price" name="price" type="number" step="0.01" value=""></p>
    	<button type="submit" id="addBookSubmit" name="addBookSubmit" class="btn">Add</button>
</form>
<p></p>
<s:a action="home">返回主页</s:a>
</body>
</html>