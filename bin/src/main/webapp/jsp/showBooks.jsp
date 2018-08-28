<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Books</title>
<link href="/css/style.css" rel="stylesheet"></link>
</head>
<body>



<h1>Show Books Page</h1>
	
	<table>
		<tr>
			<th>Book ID</th>
			<th>Title</th>
			<th>Author</th>
		</tr>
		<c:forEach items="${book}" var="book">
			<tr>
				<td>${book.bid}</td>
				<td>${book.title}</td>
				<td>${book.author}</td>
			</tr>
		</c:forEach>
	</table>
		
	<a href="/">Home</a>








</body>
</html>