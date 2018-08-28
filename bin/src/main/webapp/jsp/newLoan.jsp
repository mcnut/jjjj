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
	
	<form:form modelAttribute="loan">
 		<table>
			
			<tr>
				<td>Customer ID</td>
				
			</tr>	
			<tr>
				<td>Book ID</td>
				
			</tr>
			
			<tr>
				<td>
					<input type="submit" value="Add"/>
				</td>
			</tr>
		</table> 
	</form:form>
		
	<a href="/">Home</a>








</body>
</html>