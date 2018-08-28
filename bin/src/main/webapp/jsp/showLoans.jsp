<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Loans</title>
<link href="/css/style.css" rel="stylesheet"></link>
</head>
<body>

<h1>List Loans</h1>
	
	<br>
	<table>
		<tr>
			<th>Loan ID</th>
			<th>Customer ID</th>
			<th>Customer Name</th>
			<th>Book Title</th>
			<th>Author</th>
			<th>Due Date</th>
		</tr>
		<c:forEach items="${loan}" var="loan">
			<tr>
				<td>${loan.lid}</td>
				<td>${loan.cust.cId}</td>
				<td>${loan.cust.cName}</td>
				<td>${loan.book.title}</td>
				<td>${loan.book.author}</td>
				<td>${loan.dueDate}</td>
								
			</tr>
		</c:forEach>
	</table>
		
	<a href="/">Home</a>



</body>
</html>