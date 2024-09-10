<%-- <%@page import="org.techhub.MovieRecommendationSystem.model.*"%>
 <!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User Dashboard</title>

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
      integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
      integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
      crossorigin="anonymous"
    ></script>

    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Crimson Text", serif;
        font-weight: 700;
        font-style: normal;
      }

      .wrapper {
        overflow-y: scroll;
        height: 100vh;
        /* background-image: url(https://img.freepik.com/free-photo/cinematography-symbols-black-background_23-2147698946.jpg?t=st=1725009894~exp=1725010494~hmac=75d567d3e132bb193e0ac9db67d492cf13eb2ed816365c40080e26a67f3b53ab); */
        /* background-repeat: no-repeat;
            background-size: 100% 100%; */
      }
      .container {
        min-width: 100%;
        height: 80px;
        /* min-height: 87vh;*/
        /* background-image: linear-gradient(to bottom, #20002c, #cbb4d4); */
        background-color: rgba(71, 13, 89);
        border: 1px solid rgb(112, 46, 174);
        border-bottom-left-radius: 25px;
        border-bottom-right-radius: 25px;
        position: sticky;
        top: 0;
        z-index: 1000;
      }

      .header {
        font-size: 25px;
        font-weight: 400;
        color: white;
        padding: 15px 0px;
        text-align: center;
        /* background-color: #20002c; */
        /* text-shadow: 3px 2px 3px white; */
      }

      .nav .nav-link {
        font-size: 18px;
        color: white;
        font-weight: 700;
      }

      .nav .nav-link:hover {
        background-color: white;
        color: black;
        border-radius: 5px;
        font-weight: 700;
        border: 1px solid black;
      }

      .dropdown-menu {
        background-color: white;
        font-weight: 500;
        font-size: 18px;
        border-radius: 5px;
        border: 1px solid lavender;
      }

      .dropdown-item:hover {
        background-color: #ddd;
        color: black;
      }

      .context {
        height: 100vh;
        border: 1px solid black;
      }
      .table-responsive {
        margin-top: 20px;
      }

      .table thead th {
        background-color: #333;
        color: white;
        border: 1px solid black;
      }

      .table tbody tr {
        background-color: rgba(255, 255, 255, 0.1);
        color: white;
        border: 1px solid black;
      }

      .table tbody tr:hover {
        background-color: rgba(255, 255, 255, 0.2);
      }

      .table tbody td a {
        color: #ff5c5c;
        text-decoration: none;
        font-weight: 700;
      }

      .table tbody td a:hover {
        color: #ff1c1c;
      }
      .transition:hover {
        transform: scale(0.9);
      }
    </style>
  </head>

  <body>
  <%
  UserModel umodel = (UserModel) session.getAttribute("loginuser");
	String username = umodel.getUemail();
	String  contact = umodel.getUcontact();
	out.println("<h1>Session data</h1>");
	out.println("<h1>uemail is" + username + "</h1>");
	out.println("<h1>ucontact is" + contact + "</h1>");
	%>
  
    <div class="wrapper">
      <!-- <div class="header">
            MOVIE RECOMMENDATION SYSTEM
        </div> -->
      <div class="container mb-5">
        <div
          class="dashboard d-flex align-items-center justify-content-between p-2"
        >
          <h1 class="header">MOVIE RECOMMENDATION SYSTEM</h1>
          <div class="menubar">
            <nav class="nav" id="pills-tab" role="tablist">
              <li class="nav-item dropdown" role="presentation">
                <a
                  class="nav-link active"
                  type="button"
                  role="tab"
                  aria-selected="true"
                  href="getreview"
                  >Give Review</a
                >
              </li>
              <li class="nav-item dropdown" role="presentation">
                <a
                  class="nav-link active"
                  type="button"
                  role="tab"
                  aria-selected="true"
                  href="getrecommendation"
                  >Get Recommendation</a
                >
              </li>
              <li class="nav-item" role="presentation">
                <a
                  class="nav-link"
                  type="button"
                  role="tab"
                  aria-selected="false"
                  href="viewreview"
                  >View Movie Review</a
                >
              </li>
              <!-- <li class="nav-item" role="presentation">
                            <a class="nav-link"  type="button" role="tab"
                                aria-selected="false">Postive Review</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" type="button" role="tab"
                                aria-selected="false">Negative Review</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" type="button" role="tab"
                                aria-selected="false">Neutral Review</a>
                        </li> -->
            </nav>
          </div>
        </div>
      </div>
      <div class="content" id="pills-tabContent"></div>
    </div>
  </body>
</html> --%>
  
  
  
  <%@page import="org.techhub.MovieRecommendationSystem.model.*"%>
  <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User Dashboard</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/tiny-slider.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>

    <style>
        @import url("https://fonts.googleapis.com/css2?family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&family=Foldit:wght@523&family=Kalnia+Glaze:wght@100..700&family=Outfit:wght@100..900&display=swap");

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Crimson Text", serif;
            font-weight: 700;
            font-style: normal;
        }

        .wrapper {
            overflow-y: auto;
            /* Changed from scroll to auto */
            height: 100vh;
            background-image: linear-gradient(180deg, rgba(24, 24, 24, 0.8), rgba(24, 24, 24, 0.8)), url(https://pickamovieforme.b-cdn.net/wp-content/uploads/2020/06/bg2.jpg);
            /* background-color:  rgba(24, 24, 24); */
            background-repeat: repeat;
            background-size: cover;
        }

        .container {
            max-width: 100%;
            /* Ensure full-width on smaller screens */
            padding: 0 15px;
            /* background-color: rgba(71, 13, 89); */
            background-color: rgb(0, 0, 0);
            border: 1px solid rgb(0, 0, 0);
            border-bottom-left-radius: 25px;
            border-bottom-right-radius: 25px;
            box-shadow: 0 0 10px 2px #f3f0f5;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        h2 {
            color: white;
            font-size: 1.8em;
        }

        h1 {
            color: white;
        }

        .header {
            font-size: 1.8rem;
            /* Adjust size for better responsiveness */
            font-weight: 700;
            color: white;
            /* padding: 15px 0px; */
            text-align: center;
        }

        .nav .nav-link {
            font-size: 1.2rem;
            /* Responsive font size */
            color: white;
            font-weight: 700;
        }

        .nav .nav-link:hover {
            background-color: white;
            color: black;
            border-radius: 5px;
            font-weight: 700;
            border: 1px solid black;
        }

        .slider img {
            width: 100%;
            /* Ensure images are responsive */
            height: 500px;
            /* Maintain aspect ratio */
            max-height: 400px;
            /* Limit maximum height */
            object-fit: fill;
            margin: 10px;
            /* Ensure the image covers the container without distortion */
            box-shadow: 0 0 10px 2px #000000;
            /* box-shadow: 0 0 10px 2px #ffffff; */
            border-radius: 10px;
        }

        .dropdown .btn {
            height: 30px;
            padding: 5px 15px;
            margin-top: 20px;
            font-size: 0.9rem;
            background-color: #f6f1fa;
            color: black;
        }

        .dropdown a:hover {
            transform: scale(1.10, 1.10);
        }

        .transition-image {
            margin-bottom: 20px;
            /* Add margin to space out the images */
        }

        .transition-image:hover {
            transform: scale(1.07, 1.07);
        }

        @media (max-width: 1100px) {
            .container {
                max-width: 100%;
            }

            .header {
                font-size: 1.5rem;
                text-align: left;
                margin-top: 12px;
            }

            .dropdown .btn {
                height: 30px;
                padding: 5px 15px;
                font-size: 0.9rem;
                background-color: #f9f9f9;
            }

            .menubar {
                flex-direction: row;
                align-items: flex-start;
            }

            .nav .nav-link:hover {
                background-color: white;
                color: black;
                border-radius: 5px;
                font-weight: 700;
                border: 1px solid black;
            }
        }

        @media (max-width: 992px) {
            .container {
                max-width: 100%;
            }

            .header {
                font-size: 1.0rem;
                text-align: left;
            }

            .dropdown .btn {
                font-size: 0.8rem;
            }

            .nav .nav-link {
                font-size: 0.7rem;
            }

            .menubar {
                flex-direction: row;
                align-items: flex-start;
            }

            .nav .nav-link:hover {
                background-color: white;
                color: black;
                border-radius: 5px;
                font-weight: 700;
                border: 1px solid black;
            }
        }

        @media (max-width: 768px) {
            .header {
                font-size: 1.5rem;
                /* Smaller header on mobile */
            }

            .nav .nav-link {
                font-size: 0.9rem;
                margin-bottom: 5px;
                /* Smaller nav links on mobile */
            }

            .slider img {
                width: 100%;
                max-height: 400px;
                /* Set a consistent maximum height */
                object-fit: fill;
                /* Ensures the image covers the container without distortion */
            }

            .navbar-toggler-icon {
                width: 40px;
                color: white;
                padding: 0.2rem;
                border-radius: 5px;
                font-size: 1.2rem;
                border: 1px solid white;
            }

            .navbar-toggler-icon:hover {
                transform: scale(1.10, 1.10);
            }

            .nav .nav-link:hover {
                background-color: white;
                color: black;
                border-radius: 5px;
                font-weight: 700;
                border: 1px solid black;
            }

            .dropdown {
                margin-bottom: 10px;
            }

            .dropdown a:hover {
                transform: scale(1.10, 1.10);
            }
        }
    </style>
</head>

<body>
    <div class="wrapper">
        <div class="container mb-5">
            <div class="dashboard d-flex align-items-center justify-content-between p-2">
                <h1 class="header">MOVIE RECOMMENDATION SYSTEM</h1>
                <div class="menubar d-flex align-item-center">
                    <nav class="nav me-4 my-3 d-none d-md-flex" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <a class="nav-link active" type="button" role="tab" aria-selected="true" href="getreview">Give
                                Review</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link active" type="button" role="tab" aria-selected="true" href="getrecommendation">Get
                                Recommendation</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" type="button" role="tab" aria-selected="false" href="viewreview">View Movie
                                Review</a>
                        </li>
                    </nav>

                    <!--User DropDown-->
                    <div class="dropdown d-none d-md-flex">
                        <a class="btn btn-secondary transition-image" href="#" role="button" id="userdropdown"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-user-edit"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown">
                            <li><a class="dropdown-item" href="#"><i class="fas fa-user px-2"></i> My Profile</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-key px-2"></i> Change Password</a>
                            </li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-sign-out-alt px-2"></i> Log Out</a>
                            </li>
                        </ul>
                    </div>
                    <!--User DropDown-->

                    <!--Toggler for Mobile-->
                    <button class="navbar-toggler d-md-none ms-2" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"><i class="fas fa-align-justify"></i></span>
                    </button>
                </div>
            </div>
            <!--Collapsible content for mobile view-->
            <div class="collapse d-md-none" id="navbarContent">
                <nav class="nav flex-column">
                    <a class="nav-link" href="#">Give Review</a>
                    <a class="nav-link" href="#">Give Recommendation</a>
                    <a class="nav-link" href="#">View Movie Review</a>
                    <div class="dropdown mx-3">
                        <a class="btn btn-secondary" href="#" role="button" id="userdropdown" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="fas fa-user-edit"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown">
                            <li><a class="dropdown-item" href="#"><i class="fas fa-user px-2"></i> My Profile</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-key px-2"></i> Change Password</a>
                            </li>
                            <li><a class="dropdown-item" href="#"><i class="fas fa-sign-out-alt px-2"></i> Log Out</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <div class="content m-auto" id="pills-tabContent">
            <h2 class="m-3 fw-bold">ROMCOM MOVIES</h2>
            <div class="my-slider-1 slider p-3">
                <div class="transition-image">
                    <img src="https://rukminim2.flixcart.com/image/850/1000/xif0q/poster/j/e/x/small-spos14221-poster-ddlj-celebration-shahrukh-khan-with-kajol-original-imagkb9azfjghhck.jpeg?q=90&crop=false"
                        alt="Movie 1" />
                    <h1 class="my-2 mx-3 fst-italic fs-4 fw-bold">
                        Dilwale Dulhania Le Jayenge
                    </h1>
                </div>
                <div class="transition-image">
                    <img src="https://wallpapercave.com/dwp1x/wp8350108.jpg" alt="Movie 2" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Mitwa</h1>
                </div>
                <div class="transition-image">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW1L7ofataaaZhz0g6xw0yBp45vKDRMo1cxQ&s"
                        alt="Movie 3" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Yuva</h1>
                </div>
                <div class="transition-image">
                    <img src="https://image.tmdb.org/t/p/original/qfnjRBJCzwBHsQObI9CAhWWfS9k.jpg" alt="Movie 4" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Geeta Govindam</h1>
                </div>
                <div class="transition-image">
                    <img src="https://m.media-amazon.com/images/M/MV5BODA4MjM2ODk4OF5BMl5BanBnXkFtZTcwNDgzODk1OQ@@._V1_FMjpg_UX1000_.jpg"
                        alt="Movie 5" />
                    <h1 class="my-2 mx-3 fst-italic fs-4 fw-bold">
                        Yeh Jawaani Hai Deewani
                    </h1>
                </div>
                <div class="transition-image">
                    <img src="https://m.media-amazon.com/images/S/pv-target-images/517625285876b514a75f4ce5ad4ea8f78f8973fee162676e57704c6327c2c2db.jpg"
                        alt="Movie 6" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Jab We Met</h1>
                </div>
            </div>

            <h2 class="m-3 fw-bold">HORROR MOVIES</h2>
            <div class="my-slider-2 slider p-3">
                <div class="transition-image">
                    <img src="https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/40ab5044109945.5607683aa3157.jpg"
                        alt="Movie 1" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Naina</h1>
                </div>
                <div class="transition-image">
                    <img src="https://m.media-amazon.com/images/M/MV5BODBhODJiZTItZDc0Yi00YzYyLTk1YWEtNjM1ZjhkYzIyZTIzXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg"
                        alt="Movie 2" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Aik</h1>
                </div>
                <div class="transition-image">
                    <img src="https://static.toiimg.com/photo/61296185.cms" alt="Movie 3" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Last Bus</h1>
                </div>
                <div class="transition-image">
                    <img src="https://m.media-amazon.com/images/M/MV5BNDNmNmYyOGItM2Q4Ny00NDFlLTk4N2UtOTZkMjQ4NjVmMzRlXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_.jpg"
                        alt="Movie 4" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Raat</h1>
                </div>
                <div class="transition-image">
                    <img src="https://cinemachaat.com/wp-content/uploads/2018/01/bhaagamathie_poster.jpg"
                        alt="Movie 5" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Bhaagamathie</h1>
                </div>
                <div class="transition-image">
                    <img src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/laxmii-et00103086-02-11-2020-03-59-08.jpg"
                        alt="Movie 6" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Laxmii</h1>
                </div>
            </div>

            <h2 class="m-3 fw-bold">ACTION MOVIES</h2>
            <div class="my-slider-3 slider p-3">
                <div class="transition-image">
                    <img src="https://m.media-amazon.com/images/M/MV5BYjc1NzI1NmItYWYyNi00NzVmLWE1M2YtNzQ3MjhkYjhiNGIxXkEyXkFqcGdeQXVyNTkzNDQ4ODc@._V1_.jpg"
                        alt="Movie 1" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Ek Tha Tiger</h1>
                </div>
                <div class="transition-image">
                    <img src="https://marathistars.in/wp-content/uploads/2019/03/Rocky-Marathi-Movie-Poster.jpg"
                        alt="Movie 2" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Rocky</h1>
                </div>
                <div class="transition-image">
                    <img src="https://m.media-amazon.com/images/M/MV5BYzExZTk0ZjctOGY2Yy00YmVhLWJiNWYtNDcyYjEzMTJhOWU3XkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_.jpg"
                        alt="Movie 3" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Krack</h1>
                </div>
                <div class="transition-image">
                    <img src="https://stat4.bollywoodhungama.in/wp-content/uploads/2021/07/Kalki-2898-AD-2.jpg"
                        alt="Movie 4" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Kalki</h1>
                </div>
                <div class="transition-image">
                    <img src="https://www.yashrajfilms.com/images/default-source/Movies/Dhoom-3/dhoom-3_mobile.jpg?sfvrsn=782cf5cc_8"
                        alt="Movie 5" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Doom 3</h1>
                </div>
                <div class="transition-image">
                    <img src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/war-et00107361-16-07-2019-03-27-48.jpg"
                        alt="Movie 6" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">War</h1>
                </div>
            </div>

            <h2 class="m-3 fw-bold">THILLER MOVIES</h2>
            <div class="my-slider-3 slider p-3">
                <div class="transition-image">
                    <img src="https://m.media-amazon.com/images/M/MV5BNGZjN2JmNTItNTNhNy00OGU5LWJhNWYtNjFkMTEzNDcwNjFkXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg"
                        alt="Movie 1" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Gaslight</h1>
                </div>
                <div class="transition-image">
                    <img src="https://m.media-amazon.com/images/M/MV5BYTUwODk3NmYtMTQ2Zi00MWM5LTg1N2EtOTA0NTdmNzM1NTZlXkEyXkFqcGdeQXVyNjkwOTg4MTA@._V1_QL75_UX313.5_.jpg"
                        alt="Movie 2" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Lokshahi</h1>
                </div>
                <div class="transition-image">
                    <img src="https://stat5.bollywoodhungama.in/wp-content/uploads/2022/10/Kantara-1.jpg"
                        alt="Movie 3" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Kantara</h1>
                </div>
                <div class="transition-image">
                    <img src="https://m.media-amazon.com/images/M/MV5BN2UxN2M4MmQtZTNmNy00ZmQxLTg0MTUtNGQ5YWI0ZjU1NjYyXkEyXkFqcGdeQXVyMTYyNjAzOTUx._V1_QL75_UX289.5_.jpg"
                        alt="Movie 4"/>
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Hit: The First Case</h1>
                </div>
                <div class="transition-image">
                    <img src="https://m.media-amazon.com/images/M/MV5BMmU4ZTM0MTctZTQ3Ny00YjZmLWFhNzEtOGYzMDk0ZjcyNmYzXkEyXkFqcGdeQXVyMTUyNjIwMDEw._V1_QL75_UX820_.jpg" 
                    alt="Movie 5" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Salaar: Part 1 - Ceasefire</h1>
                </div>
                <div class="transition-image">
                    <img src="https://content1.jdmagicbox.com/comp/jd_social/news/2018aug09/image-239936-y5tqbiun9c.jpg"
                        alt="Movie 6" />
                    <h1 class="my-2 mx-3 fst-italic fs-3 fw-bold">Phobia</h1>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Initialize sliders
        var sliders = document.querySelectorAll(".slider"); // Select all slider containers

        sliders.forEach(function (sliderElement, index) {
            var slider = tns({
                container: sliderElement,
                items: 4,
                slideBy: "page",
                autoplay: true,
                controls: false,
                nav: false,
                autoplayButtonOutput: false,
                speed: 200,
                gutter: 30, // Adjust the gap between images for better spacing
                responsive: {
                    640: {
                        items: 1, // 1 item per slide on small screens
                    },
                    700: {
                        items: 2, // 2 items per slide on medium screens
                    },
                    900: {
                        items: 3, // 3 items per slide on large screens
                    },
                    1200: {
                        items: 4, // 4 items per slide on extra-large screens
                    },
                },
            });

            // Pause the slider when mouse enters
            sliderElement.addEventListener("mouseenter", function () {
                slider.pause();
            });

            // Resume the slider when mouse leaves
            sliderElement.addEventListener("mouseleave", function () {
                slider.play();
            });
        });
    </script>
</body>

</html>