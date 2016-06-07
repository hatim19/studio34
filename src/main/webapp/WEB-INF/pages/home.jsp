<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Studio 34</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="<c:url value="/resources/j.js" />"></script>
  <script src="<c:url value="/resources/j1.js" />"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }
.container-fluid {
        opacity: 1;
        background-color: transparent;
}
  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }

.navbar {
      /*font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: black;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.5;*/
          background:rgba(0,0,0,0.2);
    border: 0;
    margin-bottom: 0; 
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 15px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: black;
  color: darkslategray;
  background-color: #d3d3d3;
  border: none;
  border-radius: 15px;
  box-shadow: 0 5px gray;
}

.button:hover {background-color: silver}

.button:active {
  background-color: silver;
  box-shadow: 0 2px #666;
  transform: translateY(2px);
}
}
  </style>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top" style ="" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
      <a class="navbar-brand" style="font-family: Montserrat, sans-serif; font-size: 25px ;" href="#">Studio 34</a><!--<img style="max-width:100px; margin-top: 2px;"
             src="Studio34_logo.png">
      <a class="navbar-brand" href="#">Studio 34</a>-->
    </div>
    <div class="collapse navbar-collapse greyBg" id="myNavbar">
      <ul class="nav navbar-nav">
        <!--li class="active"><a href="#">Home</a></li>
        <li><a href="#">Page 1</a></li>
        <li><a href="#">Page 2</a></li>
        <li><a href="#">Page 3</a></li> -->
      </ul>
      <div class="col-sm-3 col-md-3 pr0">
        <form class="navbar-form noBorder pr0" role="search">
        <div class="input-group add-on">
            <input style="opacity: 0.3; " type="text" class="form-control" placeholder="Search" name="q">
            <div class="input-group-btn">
                <button class="btn btn-default" type="submit" style="opacity: 0.3; "><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>
        </form>
      </div >
      <ul class="nav navbar-nav navbar-right  pr15 ml15">
        <li><a href="#"><span class="glyphicon glyphicon-user" ></span> User</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-out" ></span> Log Out</a></li>
      </ul>
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
      <a href="sections/${mediaList[0].id}">
        <img style="width:100%" src="${mediaList[0].imageName}" class="img-responsive" alt="Image" ></a>
        <div class="carousel-caption">
          <h3 style="font-family: Times, sans-serif;font-style: bold; font-size: 30px ;"> Episode ${mediaList[0].id}</h3>
          <p style="font-family: Times, sans-serif;font-style: bold; font-size: 17px ;">Current Episode</p>
        </div>      
      </div>

      <div class="item">
        <a href="sections/${mediaList[1].id}"> 
        <img src="${mediaList[1].imageName}" class="img-responsive" style="width:100%" alt="Image" ></a>
        <div class="carousel-caption">
          <h3 style="font-family: Times, sans-serif;font-style: bold; font-size: 30px ;">Episode ${mediaList[1].id}</h3>
          <p style="font-family: Times, sans-serif;font-style: bold; font-size: 17px ;">Previous Episode</p>
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
  
<div class="text-center">   
  <br><br><h2>Past Episodes</h2><br><br>
  <div class="container episode-container"> 
    <div class="row">
    <c:forEach items="${mediaList}" var="user">
    	<div class="col-sm-4">
    	<a href="sections/${user.id}" class='thumbnail'>
      	<img src="${user.imageName}" class="img-responsive" style="width:95%" alt="Image" /></a>
    	</div>
    </c:forEach> 
    </div>   
</div>
</div>
<br />

<span id="episode">${episode}</span>

<footer class="container-fluid text-center">
  <button class="button" id="showMore" onclick="showMore()">Show More</button>
</footer>


</body>
</html>
