<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book</title>
<link href="/css/style.css" rel="stylesheet"></link>
</head>
<body>

	<h1>Add New Book</h1>
	
	<form:form modelAttribute="book">
 		Title: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
 		<form:input path="title"></form:input>&nbsp;
 		<form:errors path="title"></form:errors><br><br>
		Author: &nbsp;
		<form:input path="author"></form:input>&nbsp;
		<form:errors path="author"></form:errors><br><br>
		<input type="submit" value="Add"/>				
	</form:form>
		
	<a href="/">Home</a>
	<a href="/addBook">Add Book</a>
	<a href="/addCustomer">Add Customer</a>
	<a href="/newLoan">New Loan</a>
	<a href="/">Logout</a>

</body>
</html>