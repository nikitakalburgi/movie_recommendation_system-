<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Movie Page</title>
<script type="text/javascript"
	src="<c:url value='/resources/validate.js'/>">
</script>
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
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&family=Foldit:wght@523&family=Kalnia+Glaze:wght@100..700&family=Outfit:wght@100..900&display=swap')
	;

* {
	font-family: "Crimson Text", serif;
	font-weight: 700;
	font-style: normal;
}

.wrapper {
	min-height: 100vh;
	background-image:
		url(https://img.freepik.com/free-photo/cinematography-symbols-black-background_23-2147698946.jpg?t=st=1725009894~exp=1725010494~hmac=75d567d3e132bb193e0ac9db67d492cf13eb2ed816365c40080e26a67f3b53ab);
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.header {
	font-size: 40px;
	font-weight: 400;
	color: white;
	text-align: center;
}
/* .container
        {
            /*max-width: 100%;*/
/* min-height: 87vh;*/
/*background-color: #20002c;
        } */
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

.head {
	text-decoration: none;
	font-weight: 700;
}

.card {
	background-color: rgb(0, 0, 0, 0.7);
	box-shadow: 0 0 40px 0 rgba(0, 0, 0, .45);
}

.form-pg button {
	width: 40%;
	background-color: rgb(238, 169, 79);
	/* text-shadow: 0px 2px 4px rgb(250, 248, 248);*/
	border-radius: 5px;
	cursor: pointer;
	font-size: 1.2rem;
	color: black;
	font-weight: 700;
}

.form-pg button:hover {
	width: 40%;
	background-color: black;
	color: white;
	/*text-shadow: 0px 2px 4px rgb(250, 248, 248);*/
	border-radius: 5px;
	cursor: pointer;
	font-size: 1.2rem;
}

.form-pg input {
	border: none;
	border-bottom: 2px solid black;
	outline: none;
	border-radius: 5px;
	width: 100%;
}

.form-pg label {
	width: 100%;
	/*text-align: center;*/
	color: lavenderblush;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="header">MOVIE RECOMMENDATION SYSTEM</div>
		<div class="container">
			<div
				class="dashboard d-flex align-items-center justify-content-between p-2">
				<a class="head fs-3 text-white m-0" role="tab" href="admindashboard">Admin
					Dashboard</a>
				<div class="menubar">
					<nav class="nav" id="pills-tab" role="tablist">
						<li class="nav-item dropdown"><a
							class="nav-link active dropdown-toggle" id="movieDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">Movie</a>
							<ul class="dropdown-menu" aria-labelledby="movieDropdown">
								<li><a class="dropdown-item" href="addmovie">Add Movie</a></li>
								<li><a class="dropdown-item" href="viewAllMovie">View
										Movie</a></li>
								<li><a class="dropdown-item" href="#">Update Movie</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link active dropdown-toggle" id="UserDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">User</a>
							<ul class="dropdown-menu" aria-labelledby="UserDropdown">
								<li><a class="dropdown-item" href="addUser">Add User</a></li>
								<li><a class="dropdown-item" href="viewAllUser">View
										User</a></li>
								<li><a class="dropdown-item" href="#">Update User</a></li>
							</ul></li>
						<li class="nav-item" role="presentation"><a class="nav-link"
							type="button" role="tab" aria-selected="false"
							href="movieuserral">MovieUser Relation</a></li>
						<li class="nav-item" role="presentation"><a class="nav-link"
							type="button" role="tab" aria-selected="false">Total Reviews</a>
						</li>
					</nav>
				</div>
			</div>
		</div>
		<div class="content" id="pills-tabContent">
			<div class="card col-6 mx-auto">
				<h1 class="text-center p-2 fs-4 text-white">ADD MOVIE</h1>
				<form class="form-pg mx-auto col-md-8 col-sm-10"
					action="AddMovieServlet" method="post">
					<div class="mb-2">
						<label for="movieName" class="col-form-label-lg p-1">Movie
							Name</label> <input type="text" class="form-control p-2" id="movieName"
							name="mname" placeholder="Enter the movie name" required  onkeyup="validateMovieName(this.value)"/>
							<h6 id="s" style="color:white"></h6>
					</div>
					<div class="mb-2">
						<label for="movieLanguage" class="col-form-label-lg p-1 mt-1">Movie
							Language</label> <input type="text" class="form-control p-2"
							id="movieLanguage" name="mlang"
							placeholder="Enter the movie language" required />
					</div>
					<div class="mb-2">
						<label for="releaseDate" class="col-form-label-lg p-1 mt-1">Movie
							Release Date</label> <input type="text" class="form-control p-2"
							id="releaseDate" name="mdtrel" placeholder="YYYY-MM-DD" required />
					</div>
					<div class="mb-2">
						<label for="movieCity" class="col-form-label-lg p-1 mt-1">Movie
							City</label> <input type="text" class="form-control p-2" id="movieCity"
							name="mcity" placeholder="Enter the movie city" required />
					</div>
					<div class="mb-2">
						<label for="movieCategory" class="col-form-label-lg p-1 mt-1">Movie
							Category</label> <input type="text" class="form-control p-2"
							id="category" name="mcategory"
							placeholder="Enter the movie category" required />
					</div>
					<div class="text-center p-2">
						<button type="submit" class="p-2 btn btn-secondary">ADD
							MOVIE</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>