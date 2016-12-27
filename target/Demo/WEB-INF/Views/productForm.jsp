<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
</head>
<body class="bg-success">
		<center><h1>Add New Products</h1></center>
		
		<c:url value="/admin/product/addProduct" var="url"></c:url> 
		<form:form method="post" action="${url}" commandName="productFormObj" enctype="multipart/form-data">
		
		<center>
		<table>
		 
		<tr>
			<td><form:label path="ID"></form:label></td>
			<td><form:hidden path="ID" /></td>
        </tr>
    
        <tr>
        <td><form:label path="name">Name:</form:label> 
        <form:input path="name"></form:input></td>
        
        <form:errors path="name"></form:errors>
	    </tr>
	     
	     <tr>
        <td><form:label path="price">Price:</form:label>
        <form:input path="price"></form:input></td>
        
        <form:errors path="price"></form:errors>
	    </tr>
	      
	    <tr>
	    <td><form:label path="category">Category:</form:label>
	    
	    <form:radiobutton path="category.cid" value="1"/>New Arrivals
	     <form:radiobutton path="category.cid" value="2"/>Special Edition	
	      <form:radiobutton path="category.cid" value="3"/>General
	    </td>
	    </tr>
	    
	    
	    
	     <tr>
	    
	    <td><form:label path="supplier">Supplier:</form:label>
	    
	    <form:radiobutton path="supplier.SID" value="1"/>shubz
	     <form:radiobutton path="supplier.SID" value="2"/>Zen	
	      <form:radiobutton path="supplier.SID" value="990"/>Max
	      <form:radiobutton path="supplier.SID" value="1115"/>Tata
	    </td>
	    </tr>
	     
        
	    
	    <tr><td><form:input type="file" class="btn btn-link" path="productImage"/></td></tr>
	  
	    
	    <tr>
	    <td>
	    <input type="submit"  value="AddProduct">
	    </td>
	    </tr>
	   
		</table>
	 </center>
	 </form:form>
	
		
		
<%@ include file="footer.jsp" %>
	

	
</body>
</html>