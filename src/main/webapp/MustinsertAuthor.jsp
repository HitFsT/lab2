<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加作者</title>
</head>
<body>
<h1 style=text-align:center;font-size:200%>添加一个作者</h1>
<p>该作者不存在，请输入作者详细信息。</p>
<form id="addAuthor" action="addAuthor" method="post">
        <p>Name:   <input id="name" name="name" type="text" value="<%request.getParameter("author");%>"></p>
        <p>Age:     <input id="age" name="age" type="number" value=""></p>
        <p>Country: <input id="country" name="country" type="text" value=""></p>
    	<button type="submit" id="addAuthorSubmit" name="addAuthorSubmit" class="btn">Add</button>
</form>
<p></p>
<s:a action="home">返回主页</s:a>
</body>
</html>