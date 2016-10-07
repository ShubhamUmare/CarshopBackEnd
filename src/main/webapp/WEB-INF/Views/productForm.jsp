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
<body>
<c:url value="/admin/product/addProduct" var="url"></c:url> 
	<form:form method="post" action="${url}" commandName="productFormObj">
		<table>
		<tr>
			<td><form:label path="ID"></form:label></td>
			<td><form:hidden path="ID" /></td>
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
	    <td colspan="2"><input type="submit" value="AddProduct"></td>
	    </tr>
		</table>
	</form:form>
	
	
<H1> List of Products</H1>
	<table class="table table-boardered">
		<thead>
		<tr class="danger">
			<th>ID</th>
			<th>Product Name</th>
			<th>Category Name</th>
		</tr>
		</thead>
		<c:forEach items="${products}" var="p">
		<tr>
		<td>
			<a href="getProductById/${p.ID}"><c:out value="${p.ID}"></c:out></a>
			
			
		</td>	
		<td>
			<c:out value="${p.name}"></c:out>
				<td>${p.category.categoryName }</td>
			<td colspan="1"> <a href="delete/${p.ID}"><span class="glyphicon glyphicon-trash"></span></a></td>
			<td colspan="1"> <a href="admin/product/editProduct/${p.ID}"><span class="glyphicon glyphicon-edit"></span></a></td>
					
		
		
		</c:forEach>
		
		</table>


</body>
</html>