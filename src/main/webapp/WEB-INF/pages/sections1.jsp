<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <style>
        #over{
            background-color:Black;
            opacity:1;
        }
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
                  <a class="navbar-brand" style="font-family: Montserrat, sans-serif; font-size: 25px ;" href="#">Studio 34</a></span>
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








<div id="over">
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

        <div class="item active">
            <img src="/resources/PlayerResources/Mobile_Site_Landing_15_6_v2_3.png" alt="Chania" style="opacity: 0.6 " >
            <div class="carousel-caption" style="bottom: 28%;">
                <!--h3>Chania</h3>
                <p>The atmosphere in Chania has a touch of Florence and Venice.</p-->
                <div >
                    <a  href="#" onclick="return pauseVid()"><img src="/resources/PlayerResources/Previous.png" style="width: 13%"></a>
                    <a  href="#" onclick="return playVid()"><img src="/resources/PlayerResources/Play.png" style="width: 20%"></a>
                    <a  href="#" onclick="return pauseVid()"><img src="/resources/PlayerResources/Pause.png" style="width: 13%"></a>
                    <a  href="#" onclick="return pauseVid()"><img src="/resources/PlayerResources/Next.png" style="width: 13%"></a>

                </div>
            </div>
        </div>



    </div>

</div>



<audio id="myVideo" style="display: none; " controls autoplay>

    <source src="/resources/PlayerResources/s34.mp3" type="audio/mpeg">
    Your browser does not support the audio element.
</audio>

<h3>Number Parsing:</h3>
<c:set var="balance" value="1250003.350" />

<fmt:parseNumber var="i" type="number" value="${balance}" />
<p>Parsed Number (1) : <c:out value="${i}" /></p>
<fmt:parseNumber var="i" integerOnly="true"
                 type="number" value="${balance}" />
<p>Parsed Number (2) : <c:out value="${i}" /></p>

<div style="padding-right: 50px; padding-left: 50px; ">

    <h4 style="text-align: center;color: #201737;font:  bold 30px Georgia, serif;">Segments</h4>


    <c:forEach items="${sectionList}" var="section">

        <button onclick="seek(${section.getStartTime()})" style="color: black;
        font-size: 15px;">
                <fmt:parseNumber var="i" type="number" value="${(section.getStartTime()/60)}" integerOnly="true" />
                <c:out value="${i}" />:${(section.getStartTime()%60)}
        </button> <id="cdf" style = "; font-size: 18px; " >${section.getData()}<br>

    </c:forEach>

</div>

<script>
    var vid = document.getElementById("myVideo");

    function seek( time ){
        alert(time);
        document.getElementById('myVideo').currentTime = time ;
        $(this).html(time) ;
    }

    function getCurTime() {
        alert(vid.currentTime);
    }

    function setCurTime() {
        vid.currentTime=5;
    }
    function playVid() {
        vid.play();
        return false ;
    }

    function pauseVid() {
        vid.pause();
        return false ;
    }


</script>

</body>
</html>
