<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

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
<script type="text/javascript"
	src="<c:url value='/resources/JS/Validate.js' />"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>

<title>Insert title here</title>
<script type="text/javascript" src="<c:url value="/resources/search.js"/>"></script>
</head>
<body>
	<div class="form group mt-5 ml-5">

		<input type="text" name="userName" class="from-control" id="userName"
			placeholder="search..."  onkeyup="searchUserName(this.value)"/>
			</div>
			
			
	
	<h1>View User</h1>
	<div id="grid">
	
	<table class="table">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Contact</th>
			<th>DELETE</th>
			<th>UPDATE</th>
		</tr>
		<c:forEach var="e" items="${userlist}">
			<tr>

				<td>${e.getUid()}</td>
				<td>${e.getUname()}</td>
				<td>${e.getUemail()}</td>
				<td>${e.getUcontact()}</td>
				<td><a href='deluserById?userid=${e.getUid()}'>DELEET</a></td>
				<td><a href=''>UPDATE</a></td>
			</tr>


		</c:forEach>
	</table>
</div>
</body>
</html> 


<%-- <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View User Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
        </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
        </script>

     <script type="text/javascript" src="<c:url value='/resources/search.js'/>"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&family=Foldit:wght@523&family=Kalnia+Glaze:wght@100..700&family=Outfit:wght@100..900&display=swap');

        * {
            font-family: "Crimson Text", serif;
            font-weight: 700;
            font-style: normal;
        }

        .wrapper {
            min-height: 100vh;
            background-image: url(https://img.freepik.com/free-photo/cinematography-symbols-black-background_23-2147698946.jpg?t=st=1725009894~exp=1725010494~hmac=75d567d3e132bb193e0ac9db67d492cf13eb2ed816365c40080e26a67f3b53ab);
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-position: center;
            padding: 20px;
        }

        .header {
            font-size: 2.5rem;
            font-weight: 400;
            color: white;
            text-align: center;
            margin-bottom: 20px;
        }

        .nav .nav-link {
            font-size: 1rem;
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
            font-size: 1rem;
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
            background-color: rgba(0, 0, 0, 0.8);
            box-shadow: 0 0 40px rgba(0, 0, 0, .45);
            border-radius: 10px;
            padding: 20px;
            margin-top: 20px;
            color: white;
        }

        .form-pg button {
            width: 40%;
            background-color: rgb(238, 169, 79);
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.2rem;
            color: black;
            font-weight: 700;
        }

        .form-pg button:hover {
            background-color: black;
            color: white;
            border-radius: 5px;
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
            color: lavenderblush;
        }

        .table-responsive {
            margin-top: 20px;
        }

        .table thead th {
            background-color: #333;
            color: white;
        }

        .table tbody tr {
            background-color: rgba(255, 255, 255, 0.1);
            color: white;
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

        @media (max-width: 768px) {
            .header {
                font-size: 2rem;
            }

            .nav .nav-link {
                font-size: 0.875rem;
            }

            .form-pg button {
                width: 100%;
                margin-bottom: 10px;
            }

            .table-responsive {
                font-size: 0.875rem;
            }

            .card {
                padding: 15px;
            }
        }
    </style>
</head>

<body>
    <div class="wrapper">
        <div class="header">
            MOVIE RECOMMENDATION SYSTEM
        </div>
        <div class="container">
            <div class="dashboard d-flex align-items-center justify-content-between p-2">
                <a class="head fs-3 text-white m-0" role="tab" href="admindashboard">Admin Dashboard</a>
                <div class="menubar">
                    <nav class="nav" id="pills-tab" role="tablist">
                        <li class="nav-item dropdown">
                            <a class="nav-link active dropdown-toggle" id="movieDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">Movie</a>
                            <ul class="dropdown-menu" aria-labelledby="movieDropdown">
                                <li><a class="dropdown-item" href="addmovie">Add Movie</a></li>
                                <li><a class="dropdown-item" href="viewAllMovie">View Movie</a></li>
                                <li><a class="dropdown-item" href="#">Update Movie</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link active dropdown-toggle" id="UserDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">User</a>
                            <ul class="dropdown-menu" aria-labelledby="UserDropdown">
                                <li><a class="dropdown-item" href="addUser">Add User</a></li>
                                <li><a class="dropdown-item" href="viewAllUser">View User</a></li>
                                <li><a class="dropdown-item" href="#">Update User</a></li>
                            </ul>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" type="button" role="tab" aria-selected="false"
                                href="movieuserral">MovieUser Relation</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" type="button" role="tab" aria-selected="false">Total Reviews</a>
                        </li>
                    </nav>
                </div>
            </div>
        </div>
        <div class="content" id="pills-tabContent">
            <div class="card col-lg-8 col-md-10 mx-auto">
                <div class="form-group mt-3">
                    <input type="text" name="name" class="form-control fw-bolder" id="name" placeholder="search..."
                        onkeyup="searchUserName(this.value)" />
                    <h1 class="mt-4">View User</h1>
                    <div id="grid" class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Contact</th>
                                    <th>DELETE</th>
                                    <th>UPDATE</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="e" items="${userlist}">
                                    <tr>

                                        <td>${e.getUid()}</td>
                                        <td>${e.getUname()}</td>
                                        <td>${e.getUemail()}</td>
                                        <td>${e.getUcontact()}</td>
                                        <td><a href='deluserById?userid=${e.getUid()}'>DELETE</a></td>
                                        <td><a href=''>UPDATE</a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html> --%>