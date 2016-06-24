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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<style>

		.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th{
			border-top:none;
			/*padding:0px;*/
		}
		.tab1{
			padding-top: 15px !important;
			text-align: justify ;
			font-weight: 600;
		}
		.button {
			background-color: #4CAF50; /* Green */
			border: none;
			color: white;
			/*padding: 15px 32px;*/
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			margin-top: 4px;
			cursor: pointer;
			-webkit-transition-duration: 0.4s; /* Safari */
			transition-duration: 0.4s;
		}


		.button2:hover {
			box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(102,100,0,0.19);
		}
		.seg{
			padding-top: 12px; 
			padding-bottom: 10px; 
			text-align: center;
			color: #201737;
			font:  bold 30px Georgia, serif;
		}
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
		.btm22{
			bottom: 22%;
		}
		.p50{
			padding-right: 50px; 
			padding-left: 50px;
		}
		.hov>li>a:hover {
			background-color: rgba(102,0,0,0.5);
		}
		.fs{
			font-size: 18px;
		}
		.fs1{
			font-size: 16px;
			margin-top: 8px;
			font-weight: bold;
			padding-top: 0px;
		}
		.foot{
			width: 100%; 
			text-align: center; 
			bottom: 20px; 
			margin-top: 40px;
			margin-bottom: 20px; 
			position: static;
			font-size: 15px;
			font-weight: bold;
		}
		.pp{
			width: 10%;
		}
		.navp{

			display: none;
		}
		.pb{
			padding-bottom: 0px !important;
		}
		@media (max-width: 767px) 
		{
			p{
				margin-bottom: 2px;
			}
			.pt{
				padding-top: 0px !important;
			}
			.pb{
				padding-bottom: 8px;
			}
			.tab1{
				padding-top: 6px !important;
				text-align: justify ;
				font-weight: 600;
			}
			.navp{
				
				display: block;
			}
			.pp{
				width: 18%;
			}
			.foot{
				width: 100%; 
				text-align: center; 
				bottom: 20px; 
				margin-top: 40px;
				margin-bottom: 10px; 
				position: absolute;
				font-size: 10px;
				font-weight: bold;
			}
			.seg{
				padding-top: 8px; 
				padding-bottom: 2px; 
				text-align: center;
				color: #201737;
				font:  bold 25px Georgia, serif;
			}
			.p50{
				padding-right: 10px; padding-left: 10px;
			}
			.pl20{
				padding-left: 20px;
			}
			.btm22{
				bottom: 11%;
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
			.fs{
				font-size: 12px;
			}
			.fs1{
				font-size: 11px;
				margin-top: 6px;
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




		@media (min-width: 1500px){
			.pp{
				width: 20%;
			}
			.foot{
				width: 100%; 
				text-align: center; 
				bottom: 20px; 
				margin-top: 50px;
				margin-bottom: 30px; 
				position: absolute;
				font-size: 20px;
				font-weight: bold;
			}
			.seg{
				padding-top: 20px; 
				padding-bottom: 18px; 
				text-align: center;
				color: #201737;
				font:  bold 50px Georgia, serif;
			}
			.fs{
				font-size: 28px;
			}
			.fs1{
				font-size: 24px;
				margin-top: 15px;
			}
			
		}

	}
</style>
<style id="inlinecss" type="text/css">
	/* put a border around the canvas element */
	.audiobar  
	{
		margin-top:10px; 
		border-style:solid; 
		border-width:1px; 
		padding:0px; 

	}
	.imxd{
		display: none;
	}
	.imsd{
		display: none;
	}
	@media (max-width: 767px)
	{
		.imxd{
			display: none;
		}
		.imgd{
			display: none;
		}
		.imsd{
			display: inline-block;
		}
		.ts{
			font-size: 110%;
		} 

	}
	@media (min-width: 1500px) 
	{
		.imxd{
			display: inline-block;
		}
		.imgd{
			display: none;
		}
		.imsd{
			display: none;
		}
		.ts{
			font-size: 37px;
		}
	}
</style>

<script type="text/javascript">
            //Global variable to track current file name        
            var currentFile = "";

            //display and update progress bar
            function progressBar() { 
            	var oAudio = document.getElementById('myaudio'); 
            //get current time in seconds
            var elapsedTime = Math.round(oAudio.currentTime);
            //update the progress bar
            if (canvas.getContext) {
            	var ctx = canvas.getContext("2d");

                //clear canvas before painting
                ctx.clearRect(0, 0, canvas.clientWidth, canvas.clientHeight);
                ctx.fillStyle = "rgba(253,254,254,0.8)";
                var fWidth = (elapsedTime / oAudio.duration) * (canvas.clientWidth);
                if (fWidth > 0) {
                	ctx.fillRect(0, 0, fWidth, canvas.clientHeight);
                }
            }
            if (canvasTwo.getContext) {
            	var ctx = canvasTwo.getContext("2d");

                //clear canvas before painting
                ctx.clearRect(0, 0, canvasTwo.clientWidth, canvasTwo.clientHeight);
                ctx.fillStyle = "rgba(253,254,254,0.8)";
                var fWidth = (elapsedTime / oAudio.duration) * (canvasTwo.clientWidth);
                if (fWidth > 0) {
                	ctx.fillRect(0, 0, fWidth, canvasTwo.clientHeight);
                }
            }
            if (canvasThree.getContext) {
            	var ctx = canvasThree.getContext("2d");

                //clear canvas before painting
                ctx.clearRect(0, 0, canvasThree.clientWidth, canvasThree.clientHeight);
                ctx.fillStyle = "rgba(253,254,254,0.8)";
                var fWidth = (elapsedTime / oAudio.duration) * (canvasThree.clientWidth);
                if (fWidth > 0) {
                	ctx.fillRect(0, 0, fWidth, canvasThree.clientHeight);
                }
            }
        }


        function initEvents() {
        	var canvas = document.getElementById('canvas');
        	var canvasTwo = document.getElementById('canvasTwo'); 
        	var canvasThree = document.getElementById('canvasThree');  
        	var oAudio = document.getElementById('myaudio');


                //set up event to update the progress bar
                oAudio.addEventListener("timeupdate", progressBar, true); 
                //set up mouse click to control position of audio
                canvas.addEventListener("click", function(e) {
                    //this might seem redundant, but this these are needed later - make global to remove these
                    var oAudio = document.getElementById('myaudio'); 
                    var canvas = document.getElementById('canvas');            

                    if (!e) {
                    	e = window.event;
                    } //get the latest windows event if it isn't set
                    try {
                        //calculate the current time based on position of mouse cursor in canvas box
                        oAudio.currentTime = oAudio.duration * (e.offsetX / canvas.clientWidth);
                    }
                    catch (err) {
                    // Fail silently but show in F12 developer tools console
                    if (window.console && console.error("Error:" + err));
                }
            }, true);
                canvasTwo.addEventListener("click", function(e) {
                    //this might seem redundant, but this these are needed later - make global to remove these
                    var oAudio = document.getElementById('myaudio'); 
                    var canvasTwo = document.getElementById('canvasTwo');            

                    if (!e) {
                    	e = window.event;
                    } //get the latest windows event if it isn't set
                    try {
                        //calculate the current time based on position of mouse cursor in canvas box
                        oAudio.currentTime = oAudio.duration * (e.offsetX / canvasTwo.clientWidth);
                    }
                    catch (err) {
                    // Fail silently but show in F12 developer tools console
                    if (window.console && console.error("Error:" + err));
                }
            }, true);
                canvasThree.addEventListener("click", function(e) {
                    //this might seem redundant, but this these are needed later - make global to remove these
                    var oAudio = document.getElementById('myaudio'); 
                    var canvasThree = document.getElementById('canvasThree');            

                    if (!e) {
                    	e = window.event;
                    } //get the latest windows event if it isn't set
                    try {
                        //calculate the current time based on position of mouse cursor in canvas box
                        oAudio.currentTime = oAudio.duration * (e.offsetX / canvasThree.clientWidth);
                    }
                    catch (err) {
                    // Fail silently but show in F12 developer tools console
                    if (window.console && console.error("Error:" + err));
                }
            }, true);
            }
            //this event gets fired when a page has loaded
            window.addEventListener("DOMContentLoaded", initEvents, false);
        </script>
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
    							<ul class="dropdown-menu clr0 hov" style="border-top-color: currentColor;">
    								<li><a href="/sections/10">Current Episode</a></li>
    								<li><a href="/sections/9">Previous Episode</a></li>
    								<li><a href="/homeMediaList#pe">All Episodes</a></li>
    							</ul>
    						</li>
    						<li><a href="#">Contact Us</a></li>

    					</ul>
    					<ul class="nav navbar-nav navbar-right pr15 ml15">
    						<li class="dropdown">
    							<a href="#" style="background-color: rgba(0,0,0,0); padding-left: 16px; "  class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" ></span> <span class="caret"></span></a>
    							<ul class="dropdown-menu clr0 pl20 hov" style="border-top-color: currentColor;">
    								<li><a href="#">${userProfile.name}</a></li>
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
    			" src="/resources/playerResources/Desktop_Site_Landing_Nav_Bar.png" class="img-responsive" alt="Image" ></a>
    		</div>





    		<div id="over">
    			<!-- Wrapper for slides -->
    			<div class="carousel-inner" role="listbox">

    				<div class="item active">
    					<div class="imgmd">
    						<img src="/resources/playerResources/Mobile_Site_Landing_15_6_v2_3.png" alt="Chania" style="opacity: 0.6; width: 100%; " >
    					</div>
    					<div class="imgsd">
    						<img src="/resources/playerResources/Mobile_Site_Landing_15_6_v2_3.png" alt="Chania" style="opacity: 0.6; width: 100%; padding-top: 49px;" >
    					</div>
    					<div class="carousel-caption btm22" >
          <!--h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p-->
          	<audio id="myaudio" style="display: none;" style="width: 100%;" controls autoplay >
          		<source src="/resources/playerResources/s34.mp3" type="audio/mpeg" >
          			Your browser does not support the audio element.
          		</audio>



          		<script>

          			var vid = document.getElementById("myaudio");

          			vid.ontimeupdate = function() {myFunction()};

          			function myFunction() {
        // Display the current position of the video in a p element with id="demo"
        document.getElementById("demo").innerHTML = formatTime(vid.currentTime) + ' / ' + formatTime(vid.duration);
    }
    function formatTime(seconds) {
    	minutes = Math.floor(seconds / 60);
    	minutes = (minutes >= 10) ? minutes : "0" + minutes;
    	seconds = Math.floor(seconds % 60);
    	seconds = (seconds >= 10) ? seconds : "0" + seconds;
    	return minutes + ":" + seconds;
    }
</script>



<p style="text-align: center; " >
	<canvas class="imgd audiobar" id="canvas" width="500" height="5">
		canvas not supported
	</canvas>
</p>

<p style="text-align: center; " >
	<canvas class="imsd audiobar" id="canvasTwo" width="250" height="4">
		canvas not supported
	</canvas>
</p>

<p style="text-align: center; " >
	<canvas class="imxd audiobar" id="canvasThree" width="900" height="10">
		canvas not supported
	</canvas>
</p>


<p><span id="demo" class="ts" style="font-weight: bold; color: white; "></span></p>

<script type="text/javascript">
            //Check for support and enable buttons
            if (window.HTMLAudioElement) {
            	document.getElementById("play").disabled = false;
            	document.getElementById("rewind").disabled = false;
            	document.getElementById("forward").disabled = false;
            	document.getElementById("restart").disabled = false;
            }
        </script>

        <div >
        	<a href="#/" onclick="fastb()"><img class="pp" src="/resources/playerResources/Previous.png" ></a>
        	<div id="infoToggler" style="display: inline">            
        		<a href = "#/" onclick="pauseVid()"><img src="/resources/playerResources/Pause.png" class="pp" /></a>
        		<a href = "#/" onclick="playVid()"><img src="/resources/playerResources/Play.png" class="pp" style="display:none"/></a>
        	</div>

        	<script type="text/javascript">

        		$("#infoToggler").click(function() {
        			$(this).find('img').toggle();
        		});

        	</script>
          <!--a href="#/" onclick="playVid()"><img src="Play.png" style="width: 20%"></a>
          <a href="#/" onclick="pauseVid()"><img src="Pause.png" style="width: 13%"></a-->
          	<a href="#/" onclick="stop()"><img src="/resources/playerResources/Stop.png" class="pp"></a>
          	<a href="#/" onclick="fastf()"><img src="/resources/playerResources/Next.png" class="pp"></a>

          </div>
      </div>
  </div>



</div>

</div>


<h4 class="seg">Segments</h4>
<!-- <div class="p50" >

	
	<button class="button button2 fs1" onclick="document.getElementById('myaudio').currentTime = 35;" > 00:35</button> <id="cdf" class="fs" > : RJ Seetal and RJ Anand kick off the 31st episode of Studio34! <br>
	<button class="button button2 fs1" onclick="document.getElementById('myaudio').currentTime = 181;" >03:02</button> : Butterfly – Crazy Town<br>
	<button class="button button2 fs1" onclick="document.getElementById('myaudio').currentTime = 372;">06:20</button> : No Diggity – Chet Faker<br>
	<button class="button button2 fs1" onclick="document.getElementById('myaudio').currentTime = 568;" >09:48</button>  : Seetal and Anand talk about Flipkart's revised, 10 day return policy, the Flipkart Gaming Online Championship, Ads PLA on iOS, and more, on Hashtag<br>
	<button class="button button2 fs1" onclick="document.getElementById('myaudio').currentTime = 905;" >15:09</button>  : Barso Re – Guru<br>
	<button class="button button2 fs1" onclick="document.getElementById('myaudio').currentTime = 1200;" >20:01</button> : Morni – Panjabi MC<br>
	<button class="button button2 fs1" onclick="document.getElementById('myaudio').currentTime = 2185;" >24:46</button> : Utkarsh B talks to Anand and Seetal about the Reignite Core FSNs and more on Point of View<br></id="cdf">
	
</div> -->
<div class="p50" >
	<table class="table">
		<thead>

		</thead>
		<tbody>

			<c:forEach items="${sectionList}" var="section">
			<tr>
				<td class="pt pb"><button class="button button2 fs1" onclick="document.getElementById('myaudio').currentTime = ${section.getStartTime()};" >
					<fmt:parseNumber var="i" type="number" value="${(section.getStartTime()/60)}" integerOnly="true" />
					<fmt:parseNumber var="ii" type="number" value="${i/10}" integerOnly="true" />
					<c:if test="${ii=='0'}">0</c:if><c:out value="${i}" />:
					<fmt:parseNumber var="iii" type="number" value="${(section.getStartTime()%60)}" integerOnly="true" />
					<fmt:parseNumber var="iiii" type="number" value="${iii/10}" integerOnly="true" />
					<c:if test="${iiii=='0'}">0</c:if>${(section.getStartTime()%60)}
				</button></td>
				<td class="tab1 fs" style="padding: 0px; ">:</td>
				<td class="tab1 fs pb">${section.getData()}</td>
			</tr>
			</c:forEach>

			<!--<tr>
				<td class="pt pb"><button class="button button2 fs1" onclick="document.getElementById('myaudio').currentTime = 181;" > 03:02</button></td>
				<td class="tab1 fs" style="padding: 0px; ">:</td>
				<td class="tab1 fs pb">Butterfly – Crazy Town</td>
			</tr>
			<tr>
				<td class="pt pb"><button class="button button2 fs1" onclick="document.getElementById('myaudio').currentTime = 372;" > 06:20</button></td>
				<td class="tab1 fs" style="padding: 0px; ">:</td>
				<td class="tab1 fs pb">No Diggity – Chet Faker</td>
			</tr>
			<tr>
				<td class="pt pb"><button class="button button2 fs1" onclick="document.getElementById('myaudio').currentTime = 568;" > 09:48</button></td>
				<td class="tab1 fs" style="padding: 0px; ">:</td>
				<td class="tab1 fs pb">Seetal and Anand talk about Flipkart's revised, 10 day return policy, the Flipkart Gaming Online Championship, Ads PLA on iOS, and more, on Hashtag</td>
			</tr>
			<tr>
				<td class="pt pb"><button class="button button2 fs1" onclick="document.getElementById('myaudio').currentTime = 905;" > 15:09</button></td>
				<td class="tab1 fs" style="padding: 0px; ">:</td>
				<td class="tab1 fs pb">Barso Re – Guru</td>
			</tr>
			<tr>
				<td class="pt pb"><button class="button button2 fs1" onclick="document.getElementById('myaudio').currentTime = 1200;" > 20:01</button></td>
				<td class="tab1 fs" style="padding: 0px; ">:</td>
				<td class="tab1 fs pb">Morni – Panjabi MC</td>
			</tr>
			<tr>
				<td class="pt pb"><button class="button button2 fs1" onclick="document.getElementById('myaudio').currentTime = 2185;" > 24:46</button></td>
				<td class="tab1 fs" style="padding: 0px; ">:</td>
				<td class="tab1 fs pb">Utkarsh B talks to Anand and Seetal about the Reignite Core FSNs and more on Point of View</td>
			</tr> -->
		</tbody>
	</table>
	
</div>

<script>
	var vid = document.getElementById("myaudio");

	function getCurTime() {
		alert(vid.currentTime);

	}
	function stop() {
		vid.currentTime=0;

	}
	function setCurTime() {
		vid.currentTime=5;

	}
	function fastf() {
		vid.currentTime+=90;

	}
	function fastb() {
		vid.currentTime-=90;

	}
	function playVid() {
		vid.play();

	}

	function pauseVid() {
		vid.pause();

	}


</script>

<footer class="foot">
	Footer
</footer>

</body>
</html>

