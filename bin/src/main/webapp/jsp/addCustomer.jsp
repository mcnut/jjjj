<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Customer</title>
<link href="/css/style.css" rel="stylesheet"></link>
</head>
<body>



<h1>Add Customer Page</h1>
	
	<form:form modelAttribute="customer">
 		<table>
			
			<tr>
				<td>Name</td>
				<td><form:input path="cName"></form:input></td>
				<td><form:errors path="cName"></form:errors></td>
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