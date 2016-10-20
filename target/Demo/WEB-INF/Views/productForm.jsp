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
  <link type="text/css" rel="stylesheet" href="<c:url value="style.css" />" />
  <style>
  
 h1 {
  color:black;
  text-align:center;
  font-family: 'vibor', cursive;
  font-size: 50px;
	}  
.form-group {
  position: relative;
  margin-bottom: 15px;
}

  </style>    
</head>
<body class="bg-info">
		<h1>Add New Products</h1>
		
		<c:url value="/admin/product/addProduct" var="url"></c:url> 
		<form:form method="post" action="${url}" commandName="productFormObj" enctype="multipart/form-data">
		
		<center>
		<table>
		 
		<tr>
			<td><form:label path="ID"></form:label></td>
			<td><form:hidden path="ID" /></td>
        </tr>
        <tr>
        <td><form:label path="name"><font  size="4" color="#0f0f0a" style="font-family:verdana">Name:</font></form:label> 
        <form:input path="name"></form:input></td>
        
        <form:errors path="name"></form:errors>
	    </tr>
	     
	     <tr>
        <td><form:label path="price"><font  size="4" color="#0f0f0a" style="font-family:verdana">Price:</font></form:label>
        <form:input path="price"></form:input></td>
        
        <form:errors path="price"></form:errors>
	    </tr>
	     	    
	    <tr>
	    <td><form:label path="category"><font  size="4" color="#0f0f0a" style="font-family:verdana">Category:</font></form:label>
	    
	    <form:radiobutton path="category.cid" value="1"/>New Arrivals
	     <form:radiobutton path="category.cid" value="2"/>Special Edition	
	      <form:radiobutton path="category.cid" value="3"/>General
	    </td>
	    </tr>
	    
	    <tr><td><form:input type="file" class="btn btn-link" path="productImage" /></td></tr>
	  
	    
	    <tr>
	    <td>
	    <input type="submit" class="btn btn-success" value="AddProduct">
	    </td>
	    </tr>
	   
		</table>
	 </center>
	 </form:form>
	
		<center><H1> List of Products</H1></center>
		<div class="cantainer">
		<div class="responsive">
	<table class="table table-striped">
		<thead>
		<tr class="danger">
			<th style="width:10">ID</th>
			<th style="width:30">Images</th>
			<th style="width:20">Product Name</th>
			<th style="width:10">Delete</th>
			<th style="width:10">Edit</th>
		</tr>
		</thead>
		<!--  for Each book b in books -->
		<c:forEach items="${products}" var="p">
		
<tr class="active">
		<td>
			<a href="getProductById/${p.ID}"><c:out value="${p.ID}"></c:out></a>	
		</td>
			
		<td>
			<img src="<c:url value="/resources/images/${p.ID }.png"/>" width="20%"/>
		</td>
		<td>
				<c:out value="${p.name}"></c:out>
		</td>
		
		<security:authorize access="hasRole('ROLE_ADMIN')">	
		<td>
		<a href="delete/${p.ID}"><span class="glyphicon glyphicon-trash"></span></a>
		</td>
		<td>
		<a href="admin/product/editProduct/${p.ID}"><span class="glyphicon glyphicon-edit"></span></a>
		</td>
		</security:authorize>
		
		
		</tr>
		</c:forEach>
	</table>	

<%@ include file="footer.jsp" %>
	</div>
	</div>

	
</body>
</html>