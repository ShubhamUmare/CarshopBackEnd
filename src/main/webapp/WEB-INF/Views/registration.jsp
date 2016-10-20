<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ include file="header.jsp" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
  text-align: left;
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
</head>
<body background="<c:url value="/resources/images/bg3.jpg"/>">


<div class="container-wrapper">
    <div class="container">
        <div id="registration-box">
            <h2>Registration</h2>

            <c:if test="${not empty logout}">
                <div class="error" style="color: #ff0000;">${logout}</div>
            </c:if>
            <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                   <div class="form-group ">
       <input type="text" class="form-control" placeholder="Username " id="UserName">
		<i class="fa fa-user"></i>
     </div>
     <div class="form-group">
       <input type="password" class="form-control" placeholder="Password" id="Password">
       <i class="fa fa-lock"></i>
     </div>
	 <div class="form-group ">
       <input type="text" class="form-control" placeholder="Email " id="Email">
		<i class="fa fa-envelope"></i>
     </div>
	 <div class="form-group ">
       <input type="text" class="form-control" placeholder="Mobile Number " id="MobileNumber">
		<i class="fa fa-phone"></i>
     </div>
     <div class="form-group ">
       <input type="text" class="form-control" placeholder="Profile Picture " id="ProfilePicture">
      </div>
      
     
      <input type="submit" value="Continue" class="btn btn-default">
                 </form>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>	
</body>
 
</html>