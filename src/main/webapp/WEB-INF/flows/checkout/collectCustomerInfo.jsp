<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/Views/header.jsp" %>
<%@ page isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
  @import url(http://fonts.googleapis.com/css?family=Vibur);
* {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  font-family:arial;
}



h1 {
  color:grey;
  text-align:center;
  font-family: 'Vibur', cursive;
  font-size: 50px;
}
  
 </style>
</head>
<body class="bg-info">
<center>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Cutomer</h1>


            <p class="lead">Customer Details:</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3>Basic Info:</h3>

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="cart.customer.customerName" id="name" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <form:input path="cart.customer.customerEmail" id="email" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="cart.customer.customerPhone" id="phone" class="form-Control" />
        </div>

        <br/>

        <h3>Billing Address:</h3>

        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Apartment No</label>
            <form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCity">City</label>
            <form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingState">State</label>
            <form:input path="cart.customer.billingAddress.state" id="billingState" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <form:input path="cart.customer.billingAddress.zipcode" id="billingZip" class="form-Control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>
        <!--  on attribute - assign event id -->
        <!--  to attribute id value in state -->

        <input type="submit" value="Next" class="btn btn-warning" name="_eventId_customerInfoCollected" />

        <button class="btn btn-success" name="_eventId_cancel">Cancel</button>

        </form:form>

<%@ include file="/WEB-INF/Views/footer.jsp" %>
</center>
</body>
</html>