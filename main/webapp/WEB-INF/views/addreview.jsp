<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Get Review Page</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
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

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Crimson Text", serif;
	font-weight: 700;
	font-style: normal;
}

html {
	scroll-behavior: smooth;
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
	border: 1px solid rgb(0, 0, 0);
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
	transition: all 0.5s;
}

.nav .nav-link:hover {
	background-color: rgba(242, 211, 248, 0.999);
	color: black;
	border-radius: 5px;
	font-weight: 700;
	/* border: 1px solid black; */
}

/* .context {
            /* height: 100vh; */
/* border: 1px solid black; 
        } */
.card {
	border: 1px solid black;
	box-shadow: 0px 4px 15px rgba(113, 113, 113, 0.455);
}

.transition-image {
	transition: width 1s ease-in-out;
}

.transition-image:hover {
	transform: scale(1.05, 1.05);
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

.form-group input {
	border: 2px solid black;
	border-radius: 5px;
	width: 100%;
}

.form-group label {
	width: 100%;
	/*text-align: center;*/
	color: rgb(0, 0, 0);
}

.form-group button {
	width: 20%;
	background-color: rgb(238, 169, 79);
	/* text-shadow: 0px 2px 4px rgb(250, 248, 248);*/
	border-radius: 5px;
	cursor: pointer;
	font-size: 1.2rem;
	color: black;
	font-weight: 700;
	transition: all 0.5s;
}

.form-group button:hover {
	width: 20%;
	background-color: transparent;
	color: rgb(0, 0, 0);
	/*text-shadow: 0px 2px 4px rgb(250, 248, 248);*/
	border-radius: 5px;
	cursor: pointer;
	font-size: 1.2rem;
}
</style>
</head>
<body>
	<div class="wrapper">
		<!-- <div class="header">
            MOVIE RECOMMENDATION SYSTEM
        </div> -->
		<div class="container mb-5">
			<div
				class="dashboard d-flex align-items-center justify-content-between p-2">
				<h1 class="header">MOVIE RECOMMENDATION SYSTEM</h1>
				<div class="menubar">
					<nav class="nav" id="pills-tab" role="tablist">
						<li class="nav-item" role="presentation"><a
							class="nav-link active" type="button" role="tab"
							aria-selected="true">Give Review/Rating</a></li>
						<li class="nav-item" role="presentation"><a
							class="nav-link active" type="button" role="tab"
							aria-selected="true">Get Recommendation</a></li>
						<li class="nav-item" role="presentation"><a class="nav-link"
							type="button" role="tab" aria-selected="false">View Movie
								Review</a></li>
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
		<div class="content d-flex flex-row justify-content-around"
			id="pills-tabContent">
			<div class="context col-6 p-4">
				<div class="card col-lg-11 h-100 m-auto transition-image">
					<h1 class="mx-5 my-3 fs-3">View Movies</h1>
					<div id="gridshow" class="table-responsive p-3">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>ID</th>
									<th>Name</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="e" items="${movielist}">
									<tr>
										<td>${e.getId()}</td>
										<td>${e.getMname()}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="context col-6 p-4">
				<div class="card col-lg-11 h-100 transition-image">
					<form action="adddddreview" method="post" class="form-group p-4">
						<h1 class="mx-2 my-3 fs-3">Give Reviews / Rating</h1>
						<div class="mb-2">
							<label for="movieName" class="col-form-label-lg p-1">Movie
								Id</label> <input type="text" class="p-2" id="movieid" name="id"
								placeholder="Enter the movie id" required />
						</div>
						
						<div class="mb-2">
							<label for="movieName" class="col-form-label-lg p-1">Rating</label>
							<input type="text" class="p-2" id="rating" name="rating"
								placeholder="Enter your Rating" required />
						</div>

						<div class="mb-2">
							<label for="movieName" class="col-form-label-lg p-1">text
								review</label> <input type="text" class="p-2" id="textrating" name="txt"
								placeholder="Enter your text review" required />
						</div>

						<div class="text-center p-2">
							<button type="submit" class="p-2 btn btn-secondary">Submit</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>