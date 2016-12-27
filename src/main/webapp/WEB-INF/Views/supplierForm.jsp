<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ include file="header.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="bg-success">
<center>
<H2> Add New Supplier</H2>
	<c:url value="/admin/supplier/addSupplier" var="url"></c:url>
	<form:form method="post" action="${url}" commandName="supplierFormObj">
	<table>
	<tr>
	<td><form:label path="SID"></form:label></td>
	<td><form:hidden path="SID"/> </td>
	</tr>
	<tr>
	<td><form:label path="supplierName">Supplier Name:</form:label></td>
	<td><form:input path="supplierName"/></td>
	</tr>
	
	<tr>
	<td><form:label path="supplierAddress">Supplier Address:</form:label></td>
	<td><form:input path="supplierAddress"/></td>
	</tr>
	
	
		<tr>
	<td colspan="2"><input type="submit" class="btn btn-success" value="AddSupplier"></td>
	</tr>
	

</table>
</form:form>
</center>
</body>
</html>