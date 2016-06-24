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
  
  <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script>var _gaq=[['_setAccount','UA-20257902-1'],['_trackPageview']];(function(d,t){ var g=d.createElement(t),s=d.getElementsByTagName(t)[0]; g.async=1;g.src='//www.google-analytics.com/ga.js';s.parentNode.insertBefore(g,s)}(document,'script'))</script>
    <script src="<c:url value="/resources/audiojs/audio.min.js" />"></script>
    <link rel="stylesheet" href="<c:url value="/resources/includes/index.css" />" media="screen">
    <link rel="stylesheet" href="<c:url value="/resources/style.css" />">
    <script src="<c:url value="/resources/j1.js" />"></script>
    <script>
      audiojs.events.ready(function() {
        audiojs.createAll();
      });
    </script>
    <style>
    
    	body  {
    		background-color: black;
    		background: url("<c:url value="/resources/black.jpg" />") no-repeat center center fixed; 
    		-webkit-background-size: cover;
    		-moz-background-size: cover;
    		-o-background-size: cover;
    		background-size: cover;
		}
		
		
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

.greyBg{
    background: rgba(0, 0, 0, 0.7);
  }
.noBorder {
    border: 0px;
    box-shadow: 0px 0px 0px;
}
.pad0 {
  padding: 0px;
}
.pl15 {
  padding-left: 15px;
}
.pr15{
padding-right: 15px;
}
.pr0 {
    padding-right: 0px;
}
.pl0{
  padding-left: 0px;
}
.ml15{
  margin-left: 15px;
}
		
    </style>

</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" style ="" role="navigation">
  <div class="container-fluid pad0">
    <div class="navbar-header pl15">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
      <a class="navbar-brand" style="font-family: Montserrat, sans-serif; font-size: 25px ;" href="#">Studio 34</a>
      <!--<img style="max-width:100px; margin-top: 2px;"
             src="Studio34_logo.png">
      <a class="navbar-brand" href="#">Studio 34</a>-->
    </div>

    <div class="collapse navbar-collapse greyBg" id="myNavbar">
    <div class="col-sm-3 col-md-3 pr0">
        <form class="navbar-form noBorder pr0" role="search">
        <div class="input-group add-on">
            <input style="opacity: 0.3; " type="text" class="form-control" placeholder="Search" name="q">
            <div class="input-group-btn">
                <button class="btn btn-default mr27" type="submit" style="opacity: 0.3; "><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>
        </form>
    </div >
      <!--ul class="nav navbar-nav ml15" style="font-family: Montserrat ;  font-size: 18px ">
        <li><a href="#" style="padding-left: 0px">Episodes</a></li>
        <li><a href="#">Features</a></li>
        
      </ul-->
      <ul class="nav navbar-nav navbar-right pr15 ml15">

        <li><a href="#"><span class="glyphicon glyphicon-user" ></span> User</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-out" ></span> Log Out</a></li>
      </ul>
    </div>
  </div>
</nav>
<br><br>
<br><header>
      <h1 style="color: lightgrey; font-family: Montserrat, sans-serif; font-size: 35px ;">Current Episode</h1>
    </header>

    <audio id="demo" src="<c:url value="${media.url}" />" preload="auto"></audio>
    
  <div style="margin-left:15px;">
  
  <h4 style="color: grey  ; font:  bold 30px Georgia, serif; " >Segments</h4>
  <button onclick="document.getElementById('demo').currentTime = 31;" style="color: black;
  font-size: 15px;"> 031</button> <id="cdf" style = "color:white; font-size: 18px; " > : skip to 31 sec <br>
  <button onclick="document.getElementById('demo').currentTime = 101;" style="color: black;
  font-size: 15px;">101</button> : skip to 101 sec<br>
  <button onclick="document.getElementById('demo').currentTime = 145;" style="color: black;
  font-size: 15px;">145</button> : skip to 145 sec<br>
  <button onclick="document.getElementById('demo').currentTime = 200;" style="color: black;
  font-size: 15px;">200</button>  : skip to 200 sec<br>
  <button onclick="document.getElementById('demo').currentTime = 300;" style="color: black;
  font-size: 15px;">300</button>  : skip to 300 sec<br>
  <button onclick="document.getElementById('demo').currentTime = 450;" style="color: black;
  font-size: 15px;">450</button> : skip to 450 sec<br>
  <button onclick="document.getElementById('demo').currentTime = 699;" style="color: black;
  font-size: 15px;">699</button> : skip to 699 sec<br></id="cdf">

  </div>

<!--div id="myCarousel" class="carousel slide" data-ride="carousel">
   
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <div class="carousel-inner" role="listbox">
      <div class="item active">
      <a href="#">
        <img style="width:100%" src="ab.jpg" class="img-responsive" alt="Image" ></a>
        <div class="carousel-caption">
          <h3 style="font-family: Times, sans-serif;font-style: bold; font-size: 30px ;"> Episode 34</h3>
          <p style="font-family: Times, sans-serif;font-style: bold; font-size: 17px ;">Current Episode</p>
        </div>      
      </div>

      <div class="item">
        <a href="#"> 
        <img src="lk.jpg" class="img-responsive" style="width:100%" alt="Image" ></a>
        <div class="carousel-caption">
          <h3 style="font-family: Times, sans-serif;font-style: bold; font-size: 30px ;">Episode 33</h3>
          <p style="font-family: Times, sans-serif;font-style: bold; font-size: 17px ;">Previous Episode</p>
        </div>      
      </div>
    </div>

    
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
  <br><br><h2 style="margin: 0px; ">Past Episodes</h2><br><br>
  <div class="row">
    <div class="col-sm-4">
      <a href="#">
      <img src="1.jpg" class="img-responsive" style="width:95%" alt="Image"></a>
      <p>Current Project</p>
    </div>
    <div class="col-sm-4"> 
      <a href="#">
      <img src="2.jpg" class="img-responsive" style="width:95%" alt="Image"></a>
      <p>Project 2</p>    
    </div>
    <div class="col-sm-4"> 
      <a href="#">
      <img src="3.jpg" class="img-responsive" style="width:95%" alt="Image"></a>
      <p>Project 2</p>    
    </div>
    
  </div>
</div><br>  
<div class="container text-center">    
  <br><br>
  <div class="row">
    <div class="col-sm-4">
      <a href="#">
      <img src="1.jpg" class="img-responsive" style="width:95%" alt="Image"></a>
      <p>Current Project</p>
    </div>
    <div class="col-sm-4"> 
      <a href="#">
      <img src="2.jpg" class="img-responsive" style="width:95%" alt="Image"></a>
      <p>Project 2</p>    
    </div>
    <div class="col-sm-4"> 
      <a href="#">
      <img src="3.jpg" class="img-responsive" style="width:95%" alt="Image"></a>
      <p>Project 2</p>    
    </div>
   
  </div>
</div><br>

<footer class="container-fluid text-center">
  <button class="button"></button>
</footer-->

</body>
</html>