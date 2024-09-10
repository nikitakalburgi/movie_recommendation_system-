<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="frm" method="POST" action="adduser">
				<select name="mid"
					style='width: 100%; max-width: 400px; height: 45px'>
					<option value="">Select Movie</option>
					<c:forEach var="e" items="${mname}">
						<option value="${e.getId()}">${e.getMname()}</option>
					</c:forEach>
				</select> <br>
				<br> <input type="text" name="username" value=""
					placeholder="Enter user Name"> <br>
				<br> <input type="submit" name="s" value="ADD User">
			</form>
</body>
</html> --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Movie-User Relationship</title>
<!-- <script>
function redirecttomovieuser()
{
	window.location.href = 'viewallmovieuer';
}
</script> -->
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f7f7f7;
	margin: 20px;
}

form {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin-bottom: 30px;
}

h2 {
	color: #333;
}

label {
	display: block;
	margin-bottom: 8px;
	font-weight: bold;
}

input[type="text"], select {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

button {
	background-color: #007bff;
	color: white;
	border: none;
	padding: 10px 15px;
	font-size: 16px;
	cursor: pointer;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

button:hover {
	background-color: #0056b3;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	padding: 10px;
	border: 1px solid #ddd;
	text-align: left;
}

th {
	background-color: #f4f4f4;
}

tr:hover {
	background-color: #f1f1f1;
}

.error {
	color: red;
	margin-bottom: 20px;
}
</style>
</head>
<body>

	<h2>Add User to Movie</h2>
	<form action="${pageContext.request.contextPath}/addUserToMovie"
		method="post">
		<select name="id" style='width: 100%; max-width: 400px; height: 45px'>
			<option value="">Select Movie</option>
			<c:forEach var="e" items="${MovieList}">
				<option value="${e.getId()}">${e.getMname()}</option>
			</c:forEach>
		</select>

		<div class="form-group">
			<label for="userName">Enter User Name:</label> <input type="text"
				id="userName" name="uname" placeholder="Enter user name" required>
		</div>

		<div class="form-group">
			<label for="userEmail">Enter User Email:</label> <input type="text"
				id="userEmail" name="uemail" placeholder="Enter user email" required>
		</div>

		<div class="form-group">
			<label for="userContact">Enter User Contact:</label> <input
				type="text" id="userContact" name="ucontact"
				placeholder="Enter user contact" required>
		</div>

		<button type="submit">Add User to Movie</button>
		
	</form>



</body>
</html>
 
 
 
<%--  
 <!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Movie Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

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

        }

        .header {
            font-size: 40px;
            font-weight: 400;
            color: white;
            text-align: center;
        }

        /*.container
        {
            /*max-width: 100%;*/
        /* min-height: 87vh;*/
        /*background-color: #20002c;
        }*/
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

        .head
        {
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

        form {
            background-color: transparent;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        h2 {
            text-align: center;
            color: #fff4f4;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: white;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            background-color: burlywood;
            color: black;
            border: none;
            padding: 10px 15px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: black;
            color: white;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th,
        td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .error {
            color: red;
            margin-bottom: 20px;
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
                            <a class="nav-link" id="pills-contact-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact"
                                aria-selected="false">MovieUser Relation</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="pills-disabled-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-disabled" type="button" role="tab" aria-controls="pills-disabled"
                                aria-selected="false">Total Reviews</a>
                        </li>
                    </nav>
                </div>
            </div>
        </div>
        <div class="content" id="pills-tabContent">
            <div class="card col-6 mx-auto">
                <h2>Add User to Movie</h2>
                <form action="${pageContext.request.contextPath}/addUserToMovie" method="post">
                    <select name="id" style='width: 100%; max-width: 400px; height: 45px'>
                        <option value="">Select Movie</option>
                        <c:forEach var="e" items="${MovieList}">
                            <option value="${e.getId()}">${e.getMname()}</option>
                        </c:forEach>
                    </select>

                    <div class="form-group">
                        <label for="userName">Enter User Name:</label> <input type="text" id="userName" name="uname"
                            placeholder="Enter user name" required>
                    </div>

                    <div class="form-group">
                        <label for="userEmail">Enter User Email:</label> <input type="text" id="userEmail" name="uemail"
                            placeholder="Enter user email" required>
                    </div>

                    <div class="form-group">
                        <label for="userContact">Enter User Contact:</label> <input type="text" id="ucontact"
                            name="ucontact" placeholder="Enter user contact" required>
                    </div>

                    <button type="submit">Add User to Movie</button>

                </form>
            </div>
        </div>
    </div>
</body>

</html> --%>