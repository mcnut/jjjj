<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Customers</title>
<link href="/css/style.css" rel="stylesheet"></link>
</head>
<body>

<h1>Customers</h1>
	
	
		<c:forEach items="${customer}" var="customer">
			<h1>${customer.cId } ${customer.cName}<br></h1>
			<h3>${customer.cName}'s Loans</h3>
			
				<table>
				
					<tr>
						<th>Loan ID</th>
						<th>Book ID</th>
						<th>Title</th>
						<th>Author</th>
					</tr>
					<c:forEach items="${customer.loans}" var="customerLoans">
					<tr>
						<td>${customerLoans.lid}</td>
						<td>${customerLoans.book.bid}</td>
						<td>${customerLoans.book.title}</td>
						<td>${customerLoans.book.author}</td>				
					</tr>
					</c:forEach>
				</table>
			
		</c:forEach>
	
		
	<a href="/">Home</a>



</body>
</html>