<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>New Loan</title>
	<link href="/css/style.css" rel="stylesheet"></link>
</head>
<body>
	<h1>New Loan Page</h1>
	
	<form:form modelAttribute="newLoan">
		Customer ID: 
		<form:input path="cust"></form:input><br><br>
		Book ID: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
		<form:input path="book"></form:input><br><br>
		<input type="submit" value="Loan Book!"/>				 
	</form:form>
		
	<a href="/">Home</a>
	<a href="/showBooks">List Books</a>
	<a href="/showCustomers">List Customers</a>
	<a href="/showLoans">List Loans</a>

</body>
</html>