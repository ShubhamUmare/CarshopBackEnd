<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Supplier Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body background="<c:url value="/resources/images/car16.jpg" />">
	<center>
	<h1>Edit Supplier</h1>
	<c:url value="/admin/supplier/editSupplier" var="url"></c:url> 
	<form:form method="post" action="${url}" commandName="editSupplierObj">
		<table>
		<tr>
			<td><form:label path="SID">ID</form:label></td>
			<td><form:input path="SID" disabled="true"/>
			<form:hidden path="SID" /></td>
        </tr>
        <tr>
        <td><form:label path="supplierName">Name</form:label>  </td>
        <td><form:input path="supplierName"></form:input></td>
	    </tr>
	     
	     <tr>
        <td><form:label path="supplierAddress">Address</form:label> </td>
        <td><form:input path="supplierAddress"></form:input></td>
	    </tr>
	     
	    <tr>
	    <td colspan="2"><input type="submit" value="EditSupplier"></td>
	    </tr>
		</table>
	</form:form>
	</center>
</body>
</html>