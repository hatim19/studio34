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
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="<c:url value="/resources/j.js" />"></script>
  <script src="<c:url value="/resources/j1.js" />"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }

    .container-fluid {
      opacity: 1;
      background-color: transparent;
    }
    /* Hide the carousel text when the screen is less than 600 pixels wide */


    .navbar {
      background-color: rgba(0,0,0,0.7);
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
    .add-on .form-control:focus {
      box-shadow:none;
      -webkit-box-shadow:none;
      border-color:#cccccc;
    }

    .navbar-default .navbar-toggle:focus, .navbar-default .navbar-toggle:hover{
      background: rgba(0, 0, 0, 0.2);
    }
    .imgsd{
      display: none;
    }
    .imgmd{
      display: block;
    }
    .clr0{
      background-color: rgba(0,0,0,0.7);
    }
    @media (max-width: 767px)
    {
      .clr3{
        background-color: rgba(0,0,0,0.3);
      }
      .prl0{
        padding-right: 0;
        padding-left: 0;
      }
      .imgsd{
        display: block;
      }
      .imgmd{
        display: none;
      }

      .carousel-caption {
        display: none;
      }
      .mr27{
        margin-right: 27px;
      }
      .custom-navbar .navbar-right {
        float: right;
        padding-right: 15px;
      }
      .custom-navbar .nav.navbar-nav.navbar-right li {
        float: left;
      }
      .custom-navbar .nav.navbar-nav.navbar-right li > a {
        padding:8px 5px;
      }
      .custom-navbar .navbar-toggle {
        float: left;
        margin-right: 0
      }
      .custom-navbar .navbar-header {
        float: left;
        width: auto!important;
      }
      .custom-navbar .navbar-collapse {
        clear: both;
        float: none;
      }
      .nav.navbar-nav.pull-right {
        float: left !important;
      }
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

    .button:hover {background-color: silver}


    .button:active {
      background-color: silver;
      box-shadow: 0 2px #666;
      transform: translateY(2px);
    }


  </style>
</head>
<body>

<nav class="navbar navbar-default custom-navbar navbar-fixed-top" style ="" role="navigation">
  <div class="container-fluid pad0">
    <div class="navbar-header pl15">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

      <a class="navbar-brand" style="font-family: Montserrat, sans-serif; font-size: 25px ;" href="#">Studio 34</a>
    </div>

    <div class="collapse navbar-collapse " id="myNavbar">
      <div class="col-sm-3 col-md-3 pr0">
        <form class="navbar-form noBorder pr0" role="search">
          <div class="input-group add-on" style="width: 100%;">
            <input style="opacity: 0.9; " type="text" class="form-control" placeholder="Search" name="q">
            <div class="input-group-btn">
              <button class="btn btn-default mr27" type="submit" style="opacity: 0.8; "><i class="glyphicon glyphicon-search"></i></button>
            </div>
          </div>
        </form>
      </div >
      <ul class="nav navbar-nav ml15" style="font-family: Montserrat ;  font-size: 17px ">
        <!--li><a href="#" >Episodes</a></li-->
        <li class="dropdown">
          <a href="#" style="background-color: rgba(0,0,0,0);  "  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Episodes <span class="caret"></span></a>
          <ul class="dropdown-menu clr0" style="border-top-color: currentColor;">
            <li><a href="#">Current Episode</a></li>
            <li><a href="#">Previous Episode</a></li>
            <li><a href="#">Episodes</a></li>
          </ul>
        </li>
        <li><a href="#">Contact Us</a></li>

      </ul>
      <ul class="nav navbar-nav navbar-right pr15 ml15">

        <li><a href="#"><span class="glyphicon glyphicon-user" ></span>${userProfile.name}</a></li>
        <li><a href="/logout"><span class="glyphicon glyphicon-log-out" ></span> Log Out</a></li>
      </ul>
    </div>
  </div>
</nav>

<div>
  <!--div>
    <img style="width:100%; height: 50px; position: fixed; z-index: 1 " src="whitenav.png" class="img-responsive" alt="Image" ></a>
  </div>
  <div class="imgmd">
   <img style="width:180px; position: fixed; right: -49px;top: -16px; z-index: 1; " src="Studio34_logo.png" class="img-responsive" alt="Image" ></a>
 </div>
 <div class="imgsd">
   <img style="width:180px; position: fixed; right: -67px; top: -16px; z-index: 1; " src="Studio34_logo.png" class="img-responsive" alt="Image" ></a>
   </div-->
  <div class="imgmd">
    <a href="sections/${mediaList[0].id}">
      <img style="width:100%; " src="${mediaList[0].imageName}" class="img-responsive" alt="Image" ></a>
  </div>
  <div class="imgsd">
    <a href="sections/${mediaList[0].id}">
      <img style="width:100%; " src="${mediaList[0].imageName}" class="img-responsive" alt="Image" ></a>
  </div>
</div>

<div class="container text-center">
  <!--h3>Studio 34 is Flipkart's very own Podcast, where we bring you the latest trends at Flipkart, Achievements by Flipsters, Point of View.</h3-->
</div>


<div class="text-center">
  <br><br><h2>Past Episodes</h2><br><br>
  <div class="container episode-container">
    <div class="row">
      <c:forEach items="${mediaList}" var="media">
        <div class="col-sm-4">
          <a href="sections/${media.id}" class='thumbnail'>
            <img src="${media.imageName}" class="img-responsive" style="width:95%" alt="Image" /></a>
        </div>
      </c:forEach>
    </div>
  </div>
  <c:if test="${not empty suggestionResponseList}">
  <br><br><h2>Suggestions</h2><br><br>
  <div class="container suggestion-container">
    <div class="row">
      <c:forEach items="${suggestionResponseList}" var="suggestion">
        <div class="col-sm-4">
          <a href="sections/${suggestion.getMedia().getId()}" class='thumbnail'>
            <img src="${suggestion.getMedia().getImageName()}" class="img-responsive" style="width:95%" alt="Image" /></a>
        </div>
      </c:forEach>
    </div>
  </div>
  </c:if>
</div>

<br />

<span id="episode">${episode}</span>

<footer class="container-fluid text-center">
  <button class="button" id="showMore" onclick="showMore()">Show More</button>
</footer>


<script type="text/javascript">

</script>

</body>
</html>