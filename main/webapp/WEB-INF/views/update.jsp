<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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


</head>
<body>

<div class="content" id="pills-tabContent">
			<div class="card col-6 mx-auto">
				<h1 class="text-center p-2 fs-4 text-white">ADD MOVIE</h1>
				<form class="form-pg mx-auto col-md-8 col-sm-10"
					action="updatemovie" method="post">
					<div class="mb-2">
						<label for="movieName" class="col-form-label-lg p-1">Movie Id
							</label> <input type="text" class="form-control p-2" id="id"
							name="id" value="${model.getId()}" />
							<h6 id="s" style="color:white"></h6>
					</div>
					<div class="mb-2">
						<label for="movieName" class="col-form-label-lg p-1">Movie
							Name</label> <input type="text" class="form-control p-2" id="movieName"
							name="mname" value="${model.getMname()}" placeholder="Enter the movie name" required  onkeyup="validateMovieName(this.value)"/>
							<h6 id="s" style="color:white"></h6>
					</div>
					<div class="mb-2">
						<label for="movieLanguage" class="col-form-label-lg p-1 mt-1">Movie
							Language</label> <input type="text" class="form-control p-2"
							id="movieLanguage" value="${model.getMlang()}" name="mlang"
							placeholder="Enter the movie language" required />
					</div>
					<div class="mb-2">
						<label for="releaseDate" class="col-form-label-lg p-1 mt-1">Movie
							Release Date</label> <input type="text" class="form-control p-2"
							id="releaseDate" name="mdtrel" value="${model.getMdtrel()}" placeholder="YYYY-MM-DD" required />
					</div>
					<div class="mb-2">
						<label for="movieCity" class="col-form-label-lg p-1 mt-1">Movie
							City</label> <input type="text" class="form-control p-2" id="movieCity"
							name="mcity" value="${model.getMcity()}" placeholder="Enter the movie city" required />
					</div>
					<div class="mb-2">
						<label for="movieCategory" class="col-form-label-lg p-1 mt-1">Movie
							Category</label> <input type="text" class="form-control p-2"
							id="category" name="mcategory" value="${model.getMcategory()}"
							placeholder="Enter the movie category" required />
					</div>
					<div class="text-center p-2">
						<button type="submit" class="p-2 btn btn-secondary">Update
							MOVIE</button>
					</div>
				</form>
			</div>
			
			</div>



</body>
</html>