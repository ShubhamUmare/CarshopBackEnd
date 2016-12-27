<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      <%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product By Id</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


 <style>
 
 h1 {
  color:#F08080;
  text-align:left;
  font-family: 'Vibur', cursive;
  font-size: 50px;
	}  
p {
  color:purple;
  text-align:left;
  font-family: 'Vibur', cursive;
  font-size: 20px;
	}  

  </style>    
</head>
<body class="bg-warning">
<div ng-app="app">
<center><H1>Details of Products</H1></center>
	<div class="container">

 		<img src="<c:url value="/resources/images/${productobj.ID }.png"/>" width="50%"/><br>
 			<p>
 			<c:out value="${productobj.ID}"></c:out><br>
			<c:out value="${productobj.name }"></c:out><br>
 		
			<c:out value="${productobj.price }"></c:out>
 			</p>

  		<c:url value="/cart/add/${productobj.ID}" var="url"></c:url>
        <div ng-controller="myController">
        <security:authorize access="hasRole('ROLE_USER')">
        <center><a href="#"  ng-click="addToCart(${productobj.ID})" class="btn btn-warning btn-large"> <span class="glyphicon glyphicon-shopping-cart"></span></a></center>
        </security:authorize>
      <br>
        <center><a href="<c:url value="/productsListAnguler"></c:url>" class="btn btn-danger btn-large">Back</a></center>
  		
  		
	</div>				
</div>

		<script src="<c:url value="/resources/js/controller.js"/>"></script>
		<%@include file="footer.jsp"%>
		</div>
</body>
</html>