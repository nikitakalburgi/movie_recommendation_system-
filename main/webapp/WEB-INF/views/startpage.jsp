<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

    <!-- Bootstrap Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- External Libraries -->
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- CSS -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="lib/animate/animate.min.css" rel="stylesheet" />
    
    <script type="text/javascript">
	function redirectToLoginPage() {
		window.location.href = 'getCall6'; // Correct URL to match the mapping in HomeController
	}
	
	function redirectToLoginPageUser() {
		window.location.href = 'getCall7'; // Correct URL to match the mapping in HomeController
	}
	
	
	
	
</script>
    

    <style>
      @import url("https://fonts.googleapis.com/css2?family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&family=Foldit:wght@523&family=Kalnia+Glaze:wght@100..700&family=Outfit:wght@100..900&display=swap");
      :root {
        --primary: #fc8989; /* Define your primary color */
        --text-color: #ffffff;
      }
      * {
        font-family: "Crimson Text", serif;
        font-weight: 700;
        font-style: normal;
      }
      body,
      html {
        margin: 0;
        padding: 0;
        height: 100%;
        overflow: hidden;
      }

      .background-image {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: fill; /* Ensure the image covers the entire screen */
        opacity: 0; /* Start with the image hidden */
        transform: scale(0.9); /* Slightly shrink the image initially */
        transition: opacity 1s ease, transform 0s ease; /* Smooth transition for pop effect */
      }

      .background-image.show {
        opacity: 1; /* Fade in the image */
        transform: scale(1); /* Scale up to normal size */
      }

      .content-overlay {
        position: absolute;
        top: 40%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
        opacity: 0;
        transition: opacity 1s ease;
        /* border: 1px solid black; */
      }

      .content-overlay.show {
        opacity: 1;
      }

      h1 {
        color: #da0606;
        font-size: 45px;
        margin-bottom: 100px;
        text-transform: uppercase;
        text-shadow: 2px 3px 3px black;
      }

      .login-btn {
        padding: 20px 15px;
        margin-right: 40px;
        background-color: #ef4343;
        border-color: #da0606;
        color: #ffffff;
        text-shadow: 2px 3px 4px black;
        box-shadow: inset 10px 10px 10px 50px transparent;
        border-radius: 5px;
        cursor: pointer;
        font-size: 1.2rem;
        text-transform: uppercase;
        transition: background-color 0.3s ease;
      }

      .login-btn:hover {
        background-color: transparent; /* Darker shade for hover effect */
        box-shadow: inset 0 0 0 3px rgb(223, 61, 61);
        color: rgb(223, 61, 61);
        border-color: #430909;
        text-shadow: none;
      }

      .spinner {
        width: 40px;
        height: 40px;
        background: var(--primary);
        -webkit-animation: sk-rotateplane 1.2s infinite ease-in-out;
        animation: sk-rotateplane 1.2s infinite ease-in-out;
      }

      @-webkit-keyframes sk-rotateplane {
        0% {
          -webkit-transform: perspective(120px);
        }
        50% {
          -webkit-transform: perspective(120px) rotateY(180deg);
        }
        100% {
          -webkit-transform: perspective(120px) rotateY(180deg) rotateX(180deg);
        }
      }

      @keyframes sk-rotateplane {
        0% {
          transform: perspective(120px) rotateX(0deg) rotateY(0deg);
          -webkit-transform: perspective(120px) rotateX(0deg) rotateY(0deg);
        }
        50% {
          transform: perspective(120px) rotateX(-180.1deg) rotateY(0deg);
          -webkit-transform: perspective(120px) rotateX(-180.1deg) rotateY(0deg);
        }
        100% {
          transform: perspective(120px) rotateX(-180deg) rotateY(-179.9deg);
          -webkit-transform: perspective(120px) rotateX(-180deg)
            rotateY(-179.9deg);
        }
      }
      #spinner {
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        z-index: 9999; /* Ensure spinner is on top */
        opacity: 1;
        visibility: visible;
        transition: opacity 0.7s ease-out, visibility 0s linear 0s;
      }

      #spinner.hide {
        opacity: 0;
        visibility: hidden;
        transition: opacity 0.8s ease-out, visibility 0s linear 0.5s;
      }
    </style>
</head>
<body>
  <div
      id="spinner"
      class="bg-white d-flex align-items-center justify-content-center"
    >
      <div class="spinner"></div>
    </div>
    <img
      src="https://t4.ftcdn.net/jpg/00/92/82/47/360_F_92824780_60mM0MW8H3bdTfyPHaaavjyXtqDa1Asx.jpg"
      class="background-image"
      alt="Opening Page"
    />

    <div class="content-overlay">
      <h1>Movie Recommendation System</h1>
      <button class="login-btn" onclick="redirectToLoginPage()">Admin Login</button>
      <button class="login-btn" onclick="redirectToLoginPageUser()">User Login</button>
      
    </div>

    <script>
      (function ($) {
        "use strict";

        // Spinner removal after page fully loads
        $(window).on("load", function () {
          $("#spinner").addClass("hide");
          $(".background-image").addClass("show"); // Trigger the fade-in pop effect
          $(".content-overlay").addClass("show"); // Show the heading and button
        });
      })(jQuery);
    </script>
</body>
</html>