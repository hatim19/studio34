<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" media="all">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style type="text/css">
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

    .fs1{
      font-size: 20px !important;
      margin-top: 8px;
      font-weight: bold;
    }
    .button2:hover {
      box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(102,100,0,0.19);
    }
    html {
      position: relative;
      min-height: 100%;
    }

    .item:nth-child(1) {
      background: url(/resources/loginPageResources/BG_Login_Page.png) no-repeat center center fixed;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
    }

    .carousel {
      z-index: -99;
    }
    .carousel .item {
      position: fixed;
      width: 100%;
      height: 100%;
    }
    .title {
      text-align: center;
      margin-top: 20px;
      padding: 10px;

      color: #FFF;
    }
    .log{
      width: 19%;
      position: relative;
      top: 127px;
      opacity: 1;
    }
    .log1{
      top: 123px;
      width: 18%;
      position: relative;

    }
    .t1{
      color: #333;position: relative;top: 126px;font-weight: bold;font-size: initial;
    }
    @media (max-width: 767px) {
      .t1{
        color: #333;position: relative;top: 140px;font-weight: bold;font-size: initial;
      }
      .log{
        width: 53%;
        position: relative;
        top: 140px;
      }
      .log1{
        top: 141px;
        width: 56%;
        position: relative;
      }
    }
  </style>
</head>
<body>





<!-- Inspired by http://codepen.io/transportedman/pen/NPWRGq -->

<div class="carousel" data-ride="carousel">

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">

    <div class="item active">
    </div>

  </div>
</div>

<!-- Remeber to put all the content you want on top of the slider below the slider code -->

<div class="title">
  <img src="/resources/loginPageResources/User_Image.png" class="log1">
  <h4 class="t1">${message}</h4>
  <div>
    <a href="/login" >
      <img src='/resources/loginPageResources/g2.png' class="log" onmouseover="this.src='/resources/loginPageResources/g3.png';" onmouseout="this.src='/resources/loginPageResources/sg2.png';" /></a>
  </div>

</div>



</body>
</html>
