<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<title>Insert title here</title>
</head>
<body background="<c:url value="/resources/images/car22.jpg" />">
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
      			<a class="navbar-brand" href="#">Fast & Furious</a>
    		</div>
			<ul class="nav navbar-nav ">
				<li class="active"><a href="<c:url value="/home"/>">Home</a></li>
		
				<li><a href="<c:url value="/about"/>">About us</a></li>
				
				<c:if test="${pageContext.request.userPrincipal.name!=null}" >
		<security:authorize access="hasRole('ROLE_ADMIN')">
			
					<li><a href="<c:url value="/admin/supplier/addSupplier"/>"> Add New Supplier</a></li>
					<li><a href="<c:url value="/getAllSuppliers"/>">Browse All Suppliers</a></li>	
		</security:authorize>
		
		
			
				
			<li><a>Welcome ${pageContext.request.userPrincipal.name }</a></li>
			<security:authorize access="hasRole('ROLE_USER')">
			<li><a href=<c:url value="/cart/getCartId"/>>Cart</a></li>
			</security:authorize>
			<li><a href="<c:url value="/j_spring_security_logout"></c:url>">logout</a></li>
		</c:if>
		<!--  when the user not logged in -->
		</ul>
		<c:if test="${pageContext.request.userPrincipal.name==null}">
		 <ul class="nav navbar-nav navbar-right">
		<li>
		<a href="<c:url value="/login"></c:url>"><span class="glyphicon glyphicon-log-in" >Login</span></a>
		</li>
		<li><a href="<c:url value="/customer/registration"></c:url>"><span class="glyphicon glyphicon-user">SignUp</span></a>
		</ul>
		</c:if>	
		
		
		</div>
		
</nav>


</body>
</html>