<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body class="bg-info">
	<center>
	<h1>Edit Product</h1>
	<c:url value="/admin/product/editProduct" var="url"></c:url> 
	<form:form method="post" action="${url}" commandName="editProductObj" modelAttribute="editProductObj">
		<table>
		<tr>
			<td><form:label path="ID">ID</form:label></td>
			<td><form:input path="ID" disabled="true"/>
			<form:hidden path="ID" /></td>
        </tr>
        <tr>
        <td><form:label path="name">Name</form:label>  </td>
        <td><form:input path="name"></form:input></td>
	    </tr>
	     
	     <tr>
        <td><form:label path="price">PRICE</form:label>  </td>
        <td><form:input path="price"></form:input></td>
	    </tr>
	     	    
	    <tr>
	    <td><form:label path="category">CATEGORY</form:label></td>
	    <td>
	    <form:radiobutton path="category.cid" value="1"/>New Arrivals
	     <form:radiobutton path="category.cid" value="2"/>Special Edition	
	      <form:radiobutton path="category.cid" value="3"/>General
	    </td>
	    </tr>
	    
	    <tr>
	    <td colspan="2"><input type="submit" value="EditProduct"></td>
	    </tr>
		</table>
	</form:form>
	</center>



</body>
</html>