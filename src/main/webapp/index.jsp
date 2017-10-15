<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book Manager</title>
</head>
<style type="text/css">
h1 {text-align: center;height:50px;}
form {text-align:center;height:100px;}
h2 {text-align: center;}
h3 {text-align: center;}
</style>
<body>
<h1>欢迎使用图书管理系统</h1>
<form id="search" action="search" method="post">
        <input id="searchQuery" name="searchQuery" type="text" size="50" class="start" onfocus="if(this.value=='Enter the ISBN, Title, or Author') { this.value=''; this.className=''; }" onblur="if(this.value=='') { this.value='Enter the ISBN, Title, or Author'; this.className='start'; }" value="Enter the ISBN, Title, or Author">
    	<button type="submit" id="searchSubmit" name="searchSubmit" class="btn">Search</button>
</form>
<h2><s:a action="selectAllBooks">查看所有书籍</s:a>
<s:a action="selectAllAuthors">查看所有作者</s:a></h2>
<h3><s:a action="insertAuthor">添加作者</s:a>
<s:a action="insertBook">添加书籍</s:a></h3>

</body>
</html>