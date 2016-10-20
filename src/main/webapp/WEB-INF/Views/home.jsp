<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
  </head>
<body>
		  
	
	
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="<c:url value="/resources/images/car21.jpg"/>" alt="Lamborghini">
       <div class="carousel-caption">
        <h3>Lamborghini</h3>
        <p>Follow your ears.</p>
      </div>
    </div>

    <div class="item">
      <img src="<c:url value="/resources/images/car22.jpg"/>" alt="Porche">
       <div class="carousel-caption">
        <h3>Porche</h3>
        <p>Porche.Their is no substitute.</p>
      </div>
    </div>

    <div class="item">
      <img src="<c:url value="/resources/images/car20.jpg"/>" alt="Mercedez-Benz">
       <div class="carousel-caption">
        <h3>Mercedez-Benz</h3>
        <p>Engineered to Move the Human Spirit.</p>
      </div>
    </div>

    <div class="item">
      <img src="<c:url value="/resources/images/car15.jpg"/>" alt="Rolce-Royce">
       <div class="carousel-caption">
        <h3>Rolce-Royce</h3>
        <p>The future in the making</p>
      </div>
    </div>
    
	<div class="item">
      <img src="<c:url value="/resources/images/car16.jpg"/>" alt="Bugatti-veyron">
       <div class="carousel-caption">
        <h3>Bugatti-veyron</h3>
        <p>Nothing is enough beautiful, nothing is enough expensive.</p>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<div class="container text-center">
  <h3>Our Partners</h3>
  <br>
  <div class="row">
    <div class="col-sm-2">
      <img src="<c:url value="/resources/images/logo10.jpg"/>" class="img-responsive" style="width:50%" alt="Image">
      <h4>Ferrari</h4>
    </div>
    <div class="col-sm-2">
      <img src="<c:url value="/resources/images/logo11.jpg"/>" class="img-responsive" style="width:50%" alt="Image">
      <h4>BMW</h4>
    </div>
    <div class="col-sm-2">
      <img src="<c:url value="/resources/images/logo12.jpg"/>" class="img-responsive" style="width:50%" alt="Image">
      <h4>Jaguar</h4>
    </div>
    <div class="col-sm-2">
      <img src="<c:url value="/resources/images/logo13.jpg"/>" class="img-responsive" style="width:50%" alt="Image">
      <h4>Mini Cooper</h4>
    </div>
    <div class="col-sm-2">
      <img src="<c:url value="/resources/images/logo14.jpg"/>" class="img-responsive" style="width:50%" alt="Image">
      <h4>ABARTH</h4>
    </div>
    <div class="col-sm-2">
      <img src="<c:url value="/resources/images/logo6.jpg"/>" class="img-responsive" style="width:50%" alt="Image">
      <h4>Partner 6</h4>
    </div>
  </div>
</div><br>

		
	</body>
</html>