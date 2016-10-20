<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">   
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<%@ include file="header.jsp" %>
    
  

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
		<center><H1> List of Products</H1></center>
		<div class="cantainer">
		<div class="responsive">
	<table class="table table-hover">
		<thead>
		<tr class="success">
			<th style="width:10">ID</th>
			<th style="width:10">Images</th>
			<th style="width:20">Product Name</th>
			<th style="width:10">Delete</th>
			<th style="width:10">Edit</th>
		</tr>
		</thead>
		<!--  for Each book b in books -->
		<c:forEach items="${products}" var="p">
		
<tr class="warning">
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