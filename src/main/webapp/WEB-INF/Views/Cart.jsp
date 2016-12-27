<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">

</script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Cart Page</title>
</head>
<body>
<div class="container-wrapper">
<div class="container">
<section>
<div class="jumbotron">
<div class="container">
<h3>Cart</h3>
<p>All the selected Cars in your shopping cart</p>
</div>
</div>
</section>
<div ng-app="app" ng-controller="myController">

<div ng-init="getCart(${cartId})">
<br>
<h3>List of Cars purchased</h3>
<div>
<a class="btn btn-danger pull-left" ng-click = "clearCart()">
 <span class="glyphicon glyphicon-remove-sign">
 </span> Clear Cart
</a>

<c:url value="/order/${cartId}" var="url"></c:url>
		<a href="${url }" class="btn btn-danger pull-right">Order</a>
	
</div>
<table class="table table-hover">
<thead>

<tr class="bg-warning">
<th>Title</th>
<th>Quantity</th>
<th>Price</th>
<th>Total Price</th>
</tr>
</thead>
<tr ng-repeat="cartitem in cart.cartItem">
<td>
{{cartitem.product.name}}
</td>
<td>
{{cartitem.quantity}}
</td>
<td>
{{cartitem.product.price}}
</td>
<td>
{{cartitem.totalPrice}}
</td>
<td>
<a href="#" class="label label-danger" 
 ng-click="removeFromCart(cartitem.cartItemId)">
<span class="glyphicon glyphicon-remove">remove</span></a>
</td>
</tr>
</table>

GrandTotal Price:{{calculateGrandTotal()}}

</div>
<c:url value="/productsListAnguler" var="url"></c:url>
<a href="${url }" class="btn btn-success">Continue shopping</a>
</div>
</div>
</div>

</body>
</html>