<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    .hov>li>a:hover {
      background-color: rgba(102,0,0,0.5);
    }
    .past{
      margin: 0px 0px 0px;
      color: #201737;
      font:  bold 30px Georgia, serif;
      padding: 20px;
      margin-top: 49px;
      margin-bottom: 20px;
    }
    .ep{
      font-weight: bold;
      color: #31708f;
      padding-top: 10px;
      display: none;
    }
    .ep1{
      font-weight: bold;
      color: #31708f;
      padding-top: 10px;
      margin-bottom: 0px;
    }
    .bt{
      margin-bottom: 40px;
      margin-top: 30px;
    }
    .ps{
      font-size: 11px;
      padding: 0px 0px 10px 0px;
      text-align: -webkit-center;

      display: block;
    }
    .hrh{
      display: none;
    }
    .navp{
      display: none;
    }
    @media (max-width: 767px)
    {
      .navp{

        display: block;
      }
      .ep1{
        display: none;
      }
      .ep{
        font-weight: bold;
        color: #31708f;
        padding-top: 10px;
        display: inline-block;
      }
      .hrh{
        margin: 0px;
        margin-bottom: 5px;
        margin-top: -5px;
        border-top: 1px solid rgba(0,0,0,0.6);
        display: block;
      }
      .ps{
        font-size: 11px;
        padding: 10px 10px 0px 10px;
        text-align: -webkit-center;
        display: block;
      }
      .button {
        display: inline-block;
        padding: 7px 10px;
        font-size: 11px;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        outline: black;
        color: darkslategray;
        background-color: #d3d3d3;
        border: none;
        border-radius: 23px;
        box-shadow: 0 4px gray;
      }
      .bt{
        margin-bottom: 20px;
        margin-top: 0px;
      }
      .past{

        margin: 0px 0px 0px;
        color: #201737;
        font:  bold 26px Georgia, serif;
        padding: 20px;
        margin-top: 30px;
      }
      .pl20{
        padding-left: 20px;
      }
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
        padding-right: 15px;
      }
      .custom-navbar .nav.navbar-nav.navbar-right li {
        /*float: left;*/
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
				<span>
					<a class="navbar-brand" style="font-family: Montserrat, sans-serif; font-size: 25px ;" href="#/">Studio 34</a></span>
    </div>

    <div class="collapse navbar-collapse " id="myNavbar">
      <div class="col-sm-3 col-md-3 pr0">
        <form class="navbar-form noBorder pr0" role="search">
          <div class="input-group add-on" style="width: 100%;">
            <input style="opacity: 0.9; " type="text" class="form-control" placeholder="Search" name="q">
            <div class="input-group-btn">
              <button class="btn btn-default mr27" type="submit" style="opacity: 0.8; "><i class="glyphicon glyphicon-search"></i>
              </button>
            </div>
          </div>
        </form>
      </div >
      <ul class="nav navbar-nav ml15" style="font-family: Montserrat ;  font-size: 17px ">
        <!--li><a href="#" >Episodes</a></li-->
        <li class="dropdown">
          <a href="#/" style="background-color: rgba(0,0,0,0);  "  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Episodes <span class="caret"></span></a>
          <ul class="dropdown-menu clr0 hov" style="border-top-color: currentColor;">
            <li><a href="sections/10">Current Episode</a></li>
            <li><a href="sections/9">Previous Episode</a></li>
            <li><a href="#pe">All Episodes</a></li>
          </ul>
        </li>
        <li><a href="#/">Contact Us</a></li>
      </ul>

      <ul class="nav navbar-nav navbar-right pr15 ml15">
        <li class="dropdown">
          <a href="#/" style="background-color: rgba(0,0,0,0); padding-left: 16px; "  class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" ></span> <span class="caret"></span></a>
          <ul class="dropdown-menu clr0 pl20 hov" style="border-top-color: currentColor;">
            <li><a href="#/">${userProfile.name}</a></li>
            <li><a href="/logout">Log Out</a></li>
          </ul>
        </li>
        <!--li><a href="#"><span class="glyphicon glyphicon-user" ></span> User</a></li-->
        <!--li><a href="#"><span class="glyphicon glyphicon-log-out" ></span> Log Out</a></li-->
      </ul>
    </div>
  </div>
</nav>
<div class="navp">
  <img style="width:100%;
			height: 50px;
			position: fixed;
			z-index: 1;
			" src="/resources/homePageResources/Desktop_Site_Landing_Nav_Bar.png" class="img-responsive" alt="Image" ></a>
</div>

<div>

  <div class="imgmd">
    <a href="sections/${mediaList[0].id}">
      <img style="width:100%; " src="${mediaList[0].imageName}" class="img-responsive" alt="Image" >
    </a>
  </div>
  <div class="imgsd">
    <a href="sections/${mediaList[0].id}">
      <img style="width:100%; padding-top: 49px; " src="${mediaList[0].imageName}" class="img-responsive" alt="Image" >
    </a>
  </div>
</div>

<div id="pe" class="container text-center episode-container">
  <p class="past">EPISODES</p>
  <hr class="hrh">
  <div class="row">
    <c:forEach items="${mediaList}" var="media">
      <div class="col-sm-4 prl0">
        <p class="ep">${media.name}</p>
        <a href="sections/${media.id}">
          <img src="${media.imageName}" class="img-responsive" style="width:100%" alt="Image" />
        </a>
        <p class="ep1">${media.name}</p>
        <p class="ps">${media.data}</p>
      </div>
    </c:forEach>
  </div>
</div>

<div  class="container text-center ">
   <c:if test="${not empty suggestionResponseList}">
      <br><br><h2>Suggestions For ${q} </h2><br><br>
        <div class="row">
          <c:forEach items="${suggestionResponseList}" var="suggestion">

            <div class="col-sm-4 prl0">
              <p class="ep">${suggestion.getMedia().getName()}</p>
              <a href="sections/${suggestion.getMedia().getId()}">
                <img src="${suggestion.getMedia().getImageName()}" class="img-responsive" style="width:100%" alt="Image" />
              </a>
              <p class="ep1">${suggestion.getMedia().getName()}</p>
              <p class="ps">${suggestion.getData()}</p>
            </div>

          </c:forEach>
        </div>
    </c:if>
</div>

<br>

<span id="episode">${episode}</span>

<footer class="container-fluid text-center">
  <button class="button" id="showMore" onclick="showMore()">Show More</button>
</footer>


<script type="text/javascript">

</script>

</body>
</html>