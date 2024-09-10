<%-- <!-- <!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>

<script type="text/javascript">
	function redirectToAddMovie() {
		window.location.href = 'getCall3'; // Correct URL to match the mapping in HomeController
	}

	function redirectToAddMovie1() {
		window.location.href = 'addUser';
	}

	function redirectToAddMovie2() {
		window.location.href = 'viewAllMovie';
	}

	function redirectToAddMovie3() {
		window.location.href = 'viewAllUser';
	}
</script>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Kalnia+Glaze&family=Outfit:wght@100..900&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Outfit", sans-serif;
}

.container {
	max-width: 100%;
	/* border: 3px solid black; */
	background-image: linear-gradient(to bottom, #20002c, #cbb4d4);
}

.container h1 {
	/* margin-top: 20px; */
	padding-top: 20px;
	text-align: center;
	color: white;
	font-weight: 400;
}

.dashboard {
	display: flex;
	justify-content: space-between;
	/* height: 100vh; */
	/* border: 1px solid black; */
}

.navbar-toggler {
	background-color: lavender;
	border: none;
}

.menubar {
	height: 100vh;
	/* background-color: #302b63; */
	flex-basis: 20%;
}

.menubar button {
	color: white;
	margin-bottom: 10px;
	font-size: 25px;
}

.menubar button:hover {
	background-color: rgb(24, 99, 250);
	color: white;
}

.context {
	flex-basis: 75%;
}

.context button {
	color: white;
}

.menubar .nav-link.active {
	background-color: rgb(0, 115, 255);
	color: white;
}
</style>
</head>

<body>
	<div class="vh-100 container myflex">
		<h1>Movie Recommendation System</h1>
		<nav class="navbar">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseWidthExample"
				aria-expanded="false" aria-controls="collapseWidthExample">
				<span class="navbar-toggler-icon"></span> <span class="sr-only">Admin
					Dashboard</span>
			</button>
		</nav>

		<div class="d-flex align-items-start dashboard">

			<div class="box" style="min-height: 120px; border: none;">

				<div class="collapse collapse-horizontal" id="collapseWidthExample">

					<div class="card card-body bg-transparent"
						style="width: 300px; min-height: 550px;">

						<div class="nav flex-column nav-pills me-3 menubar" id="vpillstab"
							role="tablist" aria-orientation="vertical">

							<button class="nav-link" id="v-pills-home-tab"
								data-bs-toggle="collapse" data-bs-target="#collapseMovie"
								type="button" role="tab" aria-controls="collapseMovie"
								aria-expanded="false" aria-selected="true">Movie</button>

							<button class="nav-link" id="v-pills-profile-tab"
								data-bs-toggle="collapse" onclick=""
								data-bs-target="#collapseUser" type="button" role="tab"
								aria-controls="collapseUser" aria-expanded="false"
								aria-selected="false">User</button>

							<button class="nav-link" id="v-pills-messages-tab"
								data-bs-toggle="collapse" data-bs-target="#v-pills-messages"
								type="button" role="tab" aria-controls="v-pills-messages"
								aria-selected="false">Reviews</button>

							<button class="nav-link" id="v-pills-settings-tab"
								data-bs-toggle="collapse" data-bs-target="#v-pills-settings"
								type="button" role="tab" aria-controls="v-pills-settings"
								aria-selected="false">Total</button>

							<button class="nav-link" id="v-pills-negative-tab"
								data-bs-toggle="collapse" data-bs-target="#v-pills-negative"
								type="button" role="tab" aria-controls="v-pills-settings"
								aria-selected="false">Negative</button>

						</div>

					</div>

				</div>

			</div>

			<div class="context">

				<div class="tab-content" id="v-pills-tabContent">

					<div class="tab-pane fade show active" id="v-pills-home"
						role="tabpanel" aria-labelledby="v-pills-home-tab" tabindex="0">

						<nav>

							<div class="collapse collapse-horizontal" id="collapseMovie">

								<div class="nav nav-pills" id="nav-tab" role="tablist"
									data-bs-parent="#collapseWidthExample">



									<button class="nav-link active" id="nav-home-tab"
										data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
										role="tab" aria-controls="nav-home" aria-selected="true"
										onclick="redirectToAddMovie()">Add Movie</button>


									<button class="nav-link" id="nav-profile-tab"
										data-bs-toggle="tab" data-bs-target="#nav-profile"
										type="button" role="tab" aria-controls="nav-profile"
										aria-selected="false" onclick="redirectToAddMovie2()">View
										Movie</button>

									<button class="nav-link" id="nav-contact-tab"
										data-bs-toggle="tab" data-bs-target="#nav-contact"
										type="button" role="tab" aria-controls="nav-contact"
										aria-selected="false">Search Movie</button>

									<div data-bs-toggle="dropdown">
										<button class="nav-link" id="nav-update-tab"
											data-bs-toggle="tab" data-bs-target="#nav-update"
											type="button" aria-expanded="false" aria-selected="false">Update
											Movie</button>
									</div>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" type="button" href="#">update
												by name</a></li>
										<li><a class="dropdown-item" type="button" href="#">update
												by language</a></li>
										<li><a class="dropdown-item" type="button" href="#">update
												by date of release</a></li>
										<li><a class="dropdown-item" type="button" href="#">update
												by city</a></li>
										<li><a class="dropdown-item" type="button" href="#">update
												by category</a></li>
									</ul>

									<div data-bs-toggle="dropdown">
										<button class="nav-link" id="nav-delete-tab"
											data-bs-toggle="tab" data-bs-target="#nav-delete"
											type="button" aria-expanded="false" aria-selected="false">Delete
											Movie</button>
									</div>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" type="button" href="#">delete
												by name</a></li>
										<li><a class="dropdown-item" type="button" href="#">delete
												by language</a></li>
										<li><a class="dropdown-item" type="button" href="#">delete
												by date of release</a></li>
										<li><a class="dropdown-item" type="button" href="#">delete
												by city</a></li>
										<li><a class="dropdown-item" type="button" href="#">delete
												by category</a></li>
									</ul>

								</div>

							</div>

						</nav>

						<div class="tab-content" id="nav-tabContent">

							<div class="tab-pane fade show active" id="nav-home"
								role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">...</div>

							<div class="tab-pane fade" id="nav-profile" role="tabpanel"
								aria-labelledby="nav-profile-tab" tabindex="0">...</div>

							<div class="tab-pane fade" id="nav-contact" role="tabpanel"
								aria-labelledby="nav-contact-tab" tabindex="0">...</div>

							<div class="tab-pane fade" id="nav-update" role="tabpanel"
								aria-labelledby="nav-update-tab" tabindex="0">...</div>

							<div class="tab-pane fade" id="nav-delete" role="tabpanel"
								aria-labelledby="nav-delete-tab" tabindex="0">...</div>

						</div>

					</div>

					<div class="tab-pane fade show active" id="v-pills-profile"
						role="tabpanel" aria-labelledby="v-pills-profile-tab" tabindex="0">

						<nav>

							<div class="collapse collapse-horizontal" id="collapseUser">

								<div class="nav nav-pills" id="nav-tab" role="tablist"
									data-bs-parent="#collapseWidthExample">

									<button class="nav-link active" id="nav-home-tab"
										data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
										role="tab" aria-controls="nav-home" aria-selected="true"
										onclick="redirectToAddMovie1()">Add User</button>

									<button class="nav-link" id="nav-profile-tab"
										data-bs-toggle="tab" data-bs-target="#nav-profile"
										type="button" role="tab" aria-controls="nav-profile"
										aria-selected="false" onclick="redirectToAddMovie3()">View
										User</button>

									<button class="nav-link" id="nav-contact-tab"
										data-bs-toggle="tab" data-bs-target="#nav-contact"
										type="button" role="tab" aria-controls="nav-contact"
										aria-selected="false">Search User</button>

									<div data-bs-toggle="dropdown">
										<button class="nav-link" id="nav-update-tab"
											data-bs-toggle="tab" data-bs-target="#nav-update"
											type="button" aria-expanded="false" aria-selected="false">Update
											User</button>
									</div>

									<ul class="dropdown-menu">
										<li><a class="dropdown-item" type="button" href="#">update
												by name</a></li>
										<li><a class="dropdown-item" type="button" href="#">update
												by email</a></li>
										<li><a class="dropdown-item" type="button" href="#">update
												by contact</a></li>

									</ul>

									<div data-bs-toggle="dropdown">
										<button class="nav-link" id="nav-delete-tab"
											data-bs-toggle="tab" data-bs-target="#nav-delete"
											type="button" aria-expanded="false" aria-selected="false">Delete
											User</button>
									</div>

									<ul class="dropdown-menu">
										<li><a class="dropdown-item" type="button" href="#">delete
												by name</a></li>
										<li><a class="dropdown-item" type="button" href="#">delete
												by email</a></li>
										<li><a class="dropdown-item" type="button" href="#">delete
												by contact</a></li>

									</ul>

								</div>

							</div>

						</nav>
						<div class="tab-content" id="nav-tabContent">

							<div class="tab-pane fade show active" id="nav-home"
								role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">...</div>

							<div class="tab-pane fade" id="nav-profile" role="tabpanel"
								aria-labelledby="nav-profile-tab" tabindex="0">...</div>

							<div class="tab-pane fade" id="nav-contact" role="tabpanel"
								aria-labelledby="nav-contact-tab" tabindex="0">...</div>

							<div class="tab-pane fade" id="nav-update" role="tabpanel"
								aria-labelledby="nav-update-tab" tabindex="0">...</div>

							<div class="tab-pane fade" id="nav-delete" role="tabpanel"
								aria-labelledby="nav-delete-tab" tabindex="0">...</div>

						</div>

					</div>

					<div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
						aria-labelledby="v-pills-messages-tab" tabindex="0">...</div>

					<div class="tab-pane fade" id="v-pills-settings" role="tabpanel"
						aria-labelledby="v-pills-settings-tab" tabindex="0">...</div>

				</div>

			</div>

		</div>


	</div>
</body>
</html> -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <script type="text/javascript" src="<c:url value="/resources/search.js"/>"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript">
        function redirectToAddMovie() {
            window.location.href = 'getCall3'; // Correct URL to match the mapping in HomeController
        }
    
        function redirectToAddMovie1() {
            window.location.href = 'addUser';
        }
    
        function redirectToAddMovie2() {
            window.location.href = 'viewAllMovie';
        }
    
        function redirectToAddMovie3() {
            window.location.href = 'viewAllUser';
        }
    </script>
    <style>
         @import url('https://fonts.googleapis.com/css2?family=Kalnia+Glaze&family=Outfit:wght@100..900&display=swap');

        * {
            font-family: "Outfit", sans-serif;
            font-style: normal;
        }

        .wrapper {
            background-image: linear-gradient(to bottom, #20002c, #cbb4d4);
        }

        .header {
            font-size: 45px;
            font-weight: 400;
            color: white;
            padding: 15px 0px;
            /* background-color: rgba(0, 0, 0, 0.5); */
            text-align: center;
        }

        .sidebar {
            height: 100vh;
            overflow-y: auto;
            /* background-color: transparent; */
            position: fixed;
            top: 140px;
            left: 0;
            width: 250px;
            transition: transform 0.3s ease;
            transform: translateX(-100%);
            z-index: 1000;
        }

        .sidebar.active {
            transform: translateX(0);
        }

        .sidebar .nav-link {
            font-size: 18px;
            color: #ffffff;
            font-weight: 700;
        }

        .sidebar .nav-link:hover {
            background-color: white;
            color: black;
            border-radius: 5px;
            font-weight: 700;
        }

        .collapseinner 
        {
            position: absolute;
            top: 150px; 
            left: 300px;
            width: 850px;
            /* background-color: #343a40; */
            z-index: 1100; 
            /* border: 1px solid #495057; */
        }

        .collapse .nav-link {
            font-size: 16px;
            padding: 10px;
            margin-left: 30px;
            color: black;
            display: inline;
            width: 10%;
            border-radius: 5px;
            background-color: lavender;
            border: 1px solid lavender;
            font-weight: 500;
        }

        .collapse .nav-link:hover 
        {
            width: 10%;
            padding: 10px;
            font-size: 18px;
            border-radius: 5px;
            background-color: transparent;
            border: 1px solid lavender;
            color: white;
        }

        .content {
            width: 80%;
            margin-left: 300px;
            padding: 20px;
            margin-top: 20px;
            /* border: 1px solid lavender; */
        }

        #sidebarCollapse {
            position: fixed;
            top: 100px;
            left: 0;
            z-index: 1100;
        }

        .btn {
            color: black;
            background-color: lavender;
            font-size: 20px;
            font-weight: 700;
        }

        .btn:hover {
            background-color: transparent;
            border: 1px solid lavender;
            color: white;
        }

    </style>
</head>

<body>
    <div class="wrapper vh-100">
        <!-- Header Starts-->
        <div class="header">
            MOVIE RECOMMENDATION SYSTEM
        </div>
        <!-- Header Ends-->

        <!-- Sidebar Starts-->
        <div id="sidebar" class="sidebar">
            <div class="p-2 mt-4">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="collapse" href="#MovieSubMenu" role="button" aria-expanded="false" aria-controls="MovieSubMenu">Movie</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="collapse" href="#UserSubMenu" role="button" aria-expanded="false" aria-controls="UserSubMenu">User</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="movieuserral">MovieUserRelation</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Total Reviews</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- Sidebar Ends-->

        <!-- Main Content Start-->
        <div id="content" class="content">
            <div class="collapse collapseinner" id="MovieSubMenu">
                <a class="nav-link" href="#" onclick="redirectToAddMovie()">Add Movie</a>
                <a class="nav-link" href="#" onclick="redirectToAddMovie2()">View Movie</a>
                <a class="nav-link" href="#">Update Movie</a>
            </div>
            <div class="collapse collapseinner" id="UserSubMenu">
                <a class="nav-link" href="#" onclick="redirectToAddMovie1()">Add User</a>
                <a class="nav-link" href="#" onclick="redirectToAddMovie3()">View User</a>
                <a class="nav-link" href="#">Update User</a>
            </div>
        </div>
        <!-- Main Content Ends-->

        <!-- Toggle Button Starts-->
        <button class="btn" id="sidebarCollapse">
            <i class="fas fa-bars"></i>
              Admin Dashboard
        </button>
         <!-- Toggle Button Ends-->

    </div>


    <!--JS Script Starts-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const sidebar = document.getElementById('sidebar');
        const sidebarCollapse = document.getElementById('sidebarCollapse');
        const collapsibleLinks = document.querySelectorAll('.sidebar .nav-link[data-bs-toggle="collapse"]');

        sidebarCollapse.addEventListener('click', function () {
            sidebar.classList.toggle('active');

            // Hide all collapsible sub-menus when toggling the sidebar
            const collapses = document.querySelectorAll('.collapse');
            collapses.forEach(collapse => {
                const bsCollapse = new bootstrap.Collapse(collapse, {
                    toggle: false
                });
                bsCollapse.hide();
            });
        });

        collapsibleLinks.forEach(link => {
            link.addEventListener('click', function () {
                const target = link.getAttribute('href');

                collapsibleLinks.forEach(otherLink => {
                    const otherTarget = otherLink.getAttribute('href');
                    if (otherTarget !== target) {
                        const otherCollapse = document.querySelector(otherTarget);
                        const bsCollapse = new bootstrap.Collapse(otherCollapse, {
                            toggle: false
                        });
                        bsCollapse.hide();
                    }
                });
            });
        });
        
    </script>
    <!--JS Script Ends-->
</body>

</html>

 --%>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 <!-- <!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
  <script type="text/javascript">
    function redirectToAddMovie() {
        window.location.href = 'getCall3'; // Correct URL to match the mapping in HomeController
    }

    function redirectToAddMovie1() {
        window.location.href = 'addUser';
    }

    function redirectToAddMovie2() {
        window.location.href = 'viewAllMovie';
    }

    function redirectToAddMovie3() {
        window.location.href = 'viewAllUser';
    }
</script>
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
            min-height: 100vh;
            background-image: url(https://img.freepik.com/free-photo/cinematography-symbols-black-background_23-2147698946.jpg?t=st=1725009894~exp=1725010494~hmac=75d567d3e132bb193e0ac9db67d492cf13eb2ed816365c40080e26a67f3b53ab);
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }
        /* .container
        {
            /*max-width: 100%;*/
           /* min-height: 87vh;*/
           /*background-image: linear-gradient(to bottom, #20002c, #cbb4d4);
        } */

        .header {
            font-size: 40px;
            font-weight: 400;
            color: white;
            padding: 15px 0px;
            text-align: center;
            /*background-color: #20002c;*/
            text-shadow: 3px 2px 3px white;
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
    </style>

</head>

<body>
    <div class="wrapper">
        <div class="header">
            MOVIE RECOMMENDATION SYSTEM
        </div>
        <div class="container">
            <div class="dashboard d-flex align-items-center justify-content-between p-3">
                <h1 class="fs-3 text-white m-0">Admin Dashboard</h1>
                <div class="menubar">
                    <nav class="nav" id="pills-tab" role="tablist">
                        <li class="nav-item dropdown" role="presentation">
                            <a class="nav-link active dropdown-toggle" data-bs-toggle="dropdown" type="button"
                                role="tab" aria-selected="true">Movie</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="addmovie" onclick="redirectToAddMovie()"></a>Add Movie</a></li>
                                <li><a class="dropdown-item" href="viewAllMovie" onclick="redirectToAddMovie2()">View Movie</a></li>
                                <li><a class="dropdown-item" href="#">Update Movie</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown" role="presentation">
                            <a class="nav-link active dropdown-toggle" data-bs-toggle="dropdown" type="button"
                                role="tab" aria-selected="true">User</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="addUser" onclick="redirectToAddMovie1()">Add User</a><li>
                                <li><a class="dropdown-item" href="viewAllUser" onclick="redirectToAddMovie3()">View User</a></li>
                                <li><a class="dropdown-item" href="#">Update User</a></li>
                            </ul>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="pills-contact-tab" type="button" role="tab"
                                aria-selected="true" href="movieuserral">MovieUser Relation</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="pills-disabled-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-disabled" type="button" role="tab" aria-controls="pills-disabled"
                                aria-selected="false">Total Reviews</a>
                        </li>
                    </nav>
                </div>
            </div>
             <div class="content" id="pills-tabContent">

            </div>
        </div>
    </div>
</body>

</html> -->





<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
  <script type="text/javascript">
    function redirectToAddMovie() {
        window.location.href = 'getCall3'; // Correct URL to match the mapping in HomeController
    }

    function redirectToAddMovie1() {
        window.location.href = 'addUser';
    }

    function redirectToAddMovie2() {
        window.location.href = 'viewAllMovie';
    }

    function redirectToAddMovie3() {
        window.location.href = 'viewAllUser';
    }
</script>
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
            min-height: 100vh;
            background-image: url(https://img.freepik.com/free-photo/cinematography-symbols-black-background_23-2147698946.jpg?t=st=1725009894~exp=1725010494~hmac=75d567d3e132bb193e0ac9db67d492cf13eb2ed816365c40080e26a67f3b53ab);
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }
        /* .container
        {
            /*max-width: 100%;*/
           /* min-height: 87vh;*/
           /*background-image: linear-gradient(to bottom, #20002c, #cbb4d4);
        } */

        .header {
            font-size: 40px;
            font-weight: 400;
            color: white;
            padding: 15px 0px;
            text-align: center;
            /*background-color: #20002c;*/
            text-shadow: 3px 2px 3px white;
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
    </style>

</head>

<body>
    <div class="wrapper">
        <div class="header">
            MOVIE RECOMMENDATION SYSTEM
        </div>
        <div class="container">
            <div class="dashboard d-flex align-items-center justify-content-between p-3">
                <h1 class="fs-3 text-white m-0">Admin Dashboard</h1>
                <div class="menubar">
                    <nav class="nav" id="pills-tab" role="tablist">
                        <li class="nav-item dropdown" role="presentation">
                            <a class="nav-link active dropdown-toggle" data-bs-toggle="dropdown" type="button"
                                role="tab" aria-selected="true">Movie</a>
                            <ul class="dropdown-menu">
                                <li><Add class="dropdown-item" href="add
                                movie" onclick="redirectToAddMovie()">Add Movie</a></li>
                                <li><a class="dropdown-item" href="viewAllMovie" onclick="redirectToAddMovie2()">View Movie</a></li>
                                <li><a class="dropdown-item" href="#">Update Movie</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown" role="presentation">
                            <a class="nav-link active dropdown-toggle" data-bs-toggle="dropdown" type="button"
                                role="tab" aria-selected="true">User</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="addUser" onclick="redirectToAddMovie1()">Add User</a><li>
                                <li><a class="dropdown-item" href="viewAllUser" onclick="redirectToAddMovie3()">View User</a></li>
                                <li><a class="dropdown-item" href="#">Update User</a></li>
                            </ul>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="pills-contact-tab" type="button" role="tab"
                                aria-selected="true" href="movieuserral">MovieUser Relation</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="pills-disabled-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-disabled" type="button" role="tab" aria-controls="pills-disabled"
                                aria-selected="false">Total Reviews</a>
                        </li>
                    </nav>
                </div>
            </div>
             <div class="content" id="pills-tabContent">

            </div>
        </div>
    </div>
</body>

</html>