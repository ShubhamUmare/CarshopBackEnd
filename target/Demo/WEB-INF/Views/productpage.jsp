<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<body background="<c:url value="/resources/images/bg11.jpg"/>">

<h1>Details of Product</h1>
<p>
Id : ${productobj.ID } <br>
Name : ${productobj.name }<br> 
Price : ${productobj.price }<br>
</p>



</body>
</html>