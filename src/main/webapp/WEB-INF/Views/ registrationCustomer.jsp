<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

.login-form {
  width: 350px;
  padding: 40px 30px;
  background: #eed;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
  margin: auto;
  position: absolute;
  left: 50%;
  right: 0;
  top: 50%;
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
}

.form-group {
  position: relative;
  margin-bottom: 15px;
}

.form-control {
  width: 30%;
  height: 35px;
  border: none;
  padding: 5px 7px 5px 15px;
  background: #fff;
  color: #666;
  border: 2px solid #ddd;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
}
.form-control:focus, .form-control:focus + .fa {
  border-color: #10CE88;
  color: #10CE88;
}

.form-group .fa {
  position: absolute;
  right: 15px;
  top: 17px;
  color: #999;
}

.log-status.wrong-entry {
  -moz-animation: wrong-log 0.3s;
  -webkit-animation: wrong-log 0.3s;
  animation: wrong-log 0.3s;
}

.log-status.wrong-entry .form-control, .wrong-entry .form-control + .fa {
  border-color: #ed1c24;
  color: #ed1c24;
}

.log-btn {
  background: #FAC986;
  dispaly: inline-block;
  width: 10%;
  font-size: 16px;
  height: 35px;
  color: #fff;
  text-decoration: none;
  border: none;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
}

.link {
  text-decoration: none;
  color: white;
  float: center;
  font-size: 12px;
  margin-bottom: 15px;
}
.link:hover {
  text-decoration: underline;
  color: #8C918F;
}

.alert {
  display: none;
  font-size: 12px;
  color: #f00;
  float: left;
}

@-moz-keyframes wrong-log {
  0%, 100% {
    left: 0px;
  }
  20% , 60% {
    left: 15px;
  }
  40% , 80% {
    left: -15px;
  }
}
@-webkit-keyframes wrong-log {
  0%, 100% {
    left: 0px;
  }
  20% , 60% {
    left: 15px;
  }
  40% , 80% {
    left: -15px;
  }
}
@keyframes wrong-log {
  0%, 100% {
    left: 0px;
  }
  20% , 60% {
    left: 15px;
  }
  40% , 80% {
    left: -15px;
  }
}
  
  </style>
<title>Registartion Form</title>
</head>
<body class="bg-info">
 <center>
<div class="container-wrapper">
    <div class="container">
        <div class="login-box">
            <h1>Register Customer</h1>

            <p class="lead">Please fill in your information below:</p>
        </div>
        <c:url value="/customer/registration" var="url"></c:url>
        <form:form action="${url }"
                   method="post" commandName="customer">

        <h3>Basic Info:</h3>

        <div class="form-group">
           
            <form:errors path="customerName" cssStyle="color: #ff0000" />
            <form:input path="customerName" placeholder="Name" class="form-Control" />
        </div>
		<c:if test="${duplicateEmail!=null }">
        		${duplicateEmail }
        </c:if>
			
        <div class="form-group"> 
            <form:errors path="customerEmail" cssStyle="color: #ff0000" />
            <form:input path="customerEmail"  placeholder="Email" class="form-Control" />
        </div>

        <div class="form-group">
            <form:errors path="customerPhone" cssStyle="color: #ff0000" />
            <form:input path="customerPhone"  placeholder="Phone" class="form-Control" />
        </div>
        
		<c:if test="${duplicateUname!=null }">
       			 ${duplicateUname }
        </c:if>
		
        <div class="form-group">
            
            <form:errors path="users.username" cssStyle="color: #ff0000" />
            <form:input path="users.username"  placeholder="Username" class="form-Control" />
        </div>

        <div class="form-group">
          
            <form:errors path="users.password" cssStyle="color: #ff0000" />
            <form:password path="users.password" placeholder="Password" class="form-Control" />
        </div>


        <br/>

        <h3>Billing Address:</h3>

        <div class="form-group">
            
            <form:input path="billingAddress.streetName" placeholder="Street Name" class="form-Control" />
        </div>

        <div class="form-group">
            
            <form:input path="billingAddress.apartmentNumber"  placeholder="Apartment Number" class="form-Control" />
        </div>

        <div class="form-group">
          
            <form:input path="billingAddress.city" placeholder="City"  class="form-Control" />
        </div>

        <div class="form-group">
            
            <form:input path="billingAddress.state" placeholder="State" class="form-Control" />
        </div>

        <div class="form-group">
           
            <form:input path="billingAddress.country" placeholder="Country" class="form-Control" />
        </div>

        <div class="form-group">
            <form:input path="billingAddress.zipcode" placeholder="Zipcode" class="form-Control" />
        </div>

        <br/>

        <h3>Shipping Address:</h3>

        <div class="form-group">
        	<form:errors path="shippingAddress.streetName" cssStyle="color: #ff0000" />
            <form:input path="shippingAddress.streetName" placeholder="Street Name" class="form-Control" />
        </div>

        <div class="form-group">
            <form:input path="shippingAddress.apartmentNumber" placeholder="Apartment Number" class="form-Control" />
        </div>

        <div class="form-group">
            <form:input path="shippingAddress.city" placeholder="City" class="form-Control" />
        </div>

        <div class="form-group">
            <form:input path="shippingAddress.state" placeholder="State" class="form-Control" />
        </div>

        <div class="form-group">
            <form:input path="shippingAddress.country" placeholder="Country" class="form-Control" />
        </div>

        <div class="form-group">
            <form:input path="shippingAddress.zipcode" placeholder="Zipcode" class="form-Control" />
        </div>

        <br/><br/>

        <input type="submit" value="submit" class="btn btn-warning">
        <a href="<c:url value="/" />" class="btn btn-success">Cancel</a>

        </form:form>
</div>
</div>
</center>
<%@ include file="footer.jsp" %> 
 
</body>
</html>