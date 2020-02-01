<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Indexpage</title>
 <jsp:include page="header.jsp"></jsp:include>
</head>
<body>
<div id="myCarousel" class="carousel slide" data-slide="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
  </ol>
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/1stpage.jpg" alt="1stpage">
    </div>

    <div class="item">
      <img src="images/2ndpage.jpg" alt="2ndpage">
    </div>

    <div class="item">
      <img src="images/3rdpage.jpg" alt="3rdpage">
    </div>
    
    <div class="item">
      <img src="images/4thpage.jpg" alt="4thpage">
    
    </div>
    <div class="item">
      <img src="images/5thpage.jpg" alt="5thpage">
    </div>
    <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
    
<body>
<br>
  <div class="jumbotron">
    <h2 style="margin-left:10px">About NIIT</h2>      
    <p style="margin-left:10px">NIIT is a leading Skills and Talent Development Corporation that is building a manpower pool for global industry requirements. The company, which was set up in 1981 to help the nascent IT industry overcome its human resource challenges, today ranks among the world’s leading training companies owing to its vast, yet comprehensive array of talent development programs. With a footprint across 40 nations, NIIT offers training and development solutions to Individuals, Enterprises and Institutions.<p>
  </div>

<div class="row">
  <div class="col-md-4">
    <div class="thumbnail">
      <img src="images/p1.jpg" alt="...">
      
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <img src="images/p2.jpg" alt="...">
      
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <img src="images/p1.jpg" alt="...">
      
    </div>
  </div>
</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>