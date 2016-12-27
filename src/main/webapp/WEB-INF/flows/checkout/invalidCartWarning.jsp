<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/Views/header.jsp" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Invalid Cart!</h1>
                </div>
            </div>
        </section>
        <section class="container">
            <p><a href="<spring:url value="/productsListAnguler" />" class="btn btn-warningt">Browse Products</a></p>
        </section>

<%@ include file="/WEB-INF/Views/footer.jsp" %>
</div>
</div>
</center>
</body>
</html>