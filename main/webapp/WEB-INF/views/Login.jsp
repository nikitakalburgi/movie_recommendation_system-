
<!DOCTYPE html>
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
<script type="text/javascript"
	src="<c:url value='/resources/JS/Validate.js' />"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Kalnia+Glaze&family=Outfit:wght@100..900&display=swap')
	;

/* * {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Outfit", sans-serif;
} */
.gradient-custom {
	/*background-color: #4286f4;*/
	background-image:
		url(https://www.setupyouraccounts.com/wp-content/uploads/2022/11/background-netflix-5-800x450.jpg);
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.box {
	/*background-color: black;*/
	box-shadow: -6px 6px 78px 14px rgba(255, 255, 255, 1);
}

.container h1 {
	/* margin-top: 20px; */
	text-align: center;
	color: white;
	font-weight: 400;
}

.myflex {
	height: 100vh;
}

.dashboard {
	display: flex;
	justify-content: space-between;
	height: 100vh;
	/* border: 1px solid black; */
}

.menubar {
	height: 100vh;
	/* background-color: #302b63; */
	flex-basis: 20%;
}

.menubar button {
	color: white;
}

.context {
	flex-basis: 80%;
}

.context button {
	color: white;
}
</style>
</head>

<body>
	<section class="vh-100 gradient-custom">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card bg-dark text-white box"
						style="border-radius: 1rem;">
						<div class="card-body p-5 text-center">

							<div class="mb-md-3 mt-md-5 pb-3">

								<h2 class="fw-bold mb-2 text-uppercase">Login</h2>
								<p class="text-white-50 mb-5">Please enter your username and
									password!</p>
								<form name='frm' action='LoginController' method='Post'>
									<div data-mdb-input-init class="form-outline form-white mb-5">
										<input type="text" id="typeEmailX"
											class="form-control form-control-lg"
											onkeyup="validateName(this.value)"
											placeholder="Enter Username" name="username" />



									</div>

									<div data-mdb-input-init class="form-outline form-white mb-5">
										<input type="password" id="typePasswordX"
											class="form-control form-control-lg"
											placeholder="Enter Password" name="password" />
									</div>

									<button data-mdb-button-init data-mdb-ripple-init
										class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>
								</form>
								<div class="mt-5 col-12">
									<p class="text-center">
										Don't Have an Account? <a href="Register"
											class="link-primary text-decoration-none">Sign Up</a>
									</p>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>

</html> 

<!-- 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add Movie Page</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
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
      @import url("https://fonts.googleapis.com/css2?family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&family=Foldit:wght@523&family=Kalnia+Glaze:wght@100..700&family=Outfit:wght@100..900&display=swap");
      * {
        font-family: "Crimson Text", serif;
        font-weight: 700;
        font-style: normal;
      }
      .card {
        box-shadow: 0 0 40px 0 rgba(0, 0, 0, 0.45);
      }
      .form-pg button {
        width: 40%;
        background-color: burlywood;
        text-shadow: 0px 2px 4px rgb(250, 248, 248);
        box-shadow: inset 10px 10px 10px 50px transparent;
        border-radius: 5px;
        cursor: pointer;
        font-size: 1.2rem;
      }
      .form-pg input {
        border: none;
        border-bottom: 2px solid black;
        outline: none;
        /* margin-bottom: 2px; */
        border-radius: 5px;
      }
      .form-pg label {
        width: 100%;
        text-align: center;
      }
    </style>
  </head>
  <body>
    <div class="wrapper">
      <div
        class="card mx-auto my-4 bg-body-secondary"
        style="
          width: 30rem;
          height: 93vh;
          border: 2px solid black;
          border-top-right-radius: 55px;
          border-bottom-left-radius: 55px;
          border: none;
        "
      >
        <h1 class="text-center p-2">ADD MOVIE</h1>

        <form class="form-pg mx-1" action="AddMovieServlet" method="post">
          <label for="name" class="col-form-label-lg p-2">Movie Name</label>
          <div class="col-lg-11 m-auto">
            <input
              type="text"
              class="col-lg-12 p-2"
              id="name"
              placeholder="Enter the movie name"
              required
            />
          </div>

          <label for="language" class="col-form-label-lg p-2 mt-1"
            >Movie Language</label
          >
          <div class="col-lg-11 m-auto">
            <input
              type="text"
              class="col-lg-12 p-2"
              id="language"
              placeholder="Enter the movie language"
              required
            />
          </div>

          <label for="reldate" class="col-form-label-lg p-2 mt-1"
            >Movie Release Date</label
          >
          <div class="col-lg-11 m-auto">
            <input
              type="text"
              class="col-lg-12 p-2"
              id="reldate"
              placeholder="YYYY-MM-DD"
              required
            />
          </div>

          <label for="city" class="col-form-label-lg p-2 mt-1"
            >Movie City</label
          >
          <div class="col-lg-11 m-auto">
            <input
              type="text"
              class="col-lg-12 p-2"
              id="city"
              placeholder="Enter the movie city"
              required
            />
          </div>

          <label for="category" class="col-form-label-lg p-2 mt-1"
            >Movie Category</label
          >
          <div class="col-lg-11 m-auto">
            <input
              type="text"
              class="col-lg-12 p-2"
              id="category"
              placeholder="Enter the movie category"
              required
            />
          </div>

          <div class="col-lg-12 text-center p-5">
            <button type="submit" class="p-1">ADD MOVIE</button>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>-->
