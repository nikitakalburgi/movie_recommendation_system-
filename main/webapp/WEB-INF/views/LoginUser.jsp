<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
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
	crossorigin="anonymous">
	
</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous">
	
</script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Kalnia+Glaze&family=Outfit:wght@100..900&display=swap')
	;

.gradient-custom {
	background-image:
		url(https://www.setupyouraccounts.com/wp-content/uploads/2022/11/background-netflix-5-800x450.jpg);
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.box {
	box-shadow: -6px 6px 78px 14px rgba(255, 255, 255, 1);
}

.container h1 {
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
}

.menubar {
	height: 100vh;
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
								<form name='frm' action='LoginUserController' method='Post'
									onsubmit="return validateForm()">
									<div data-mdb-input-init class="form-outline form-white mb-5">
										<input type="text" id="typeEmailX"
											class="form-control form-control-lg"
											placeholder="Enter Username" name="uemail"
											onkeyup="validateEmail(this.value)"/>
											<h6 id="s" style="color:black"></h6>
									</div>

									<div data-mdb-input-init class="form-outline form-white mb-5">
										<input type="password" id="typePasswordX"
											class="form-control form-control-lg"
											placeholder="Enter Password" name="ucontact"
											onkeyup="validateNumber(this.value)" />
											<h6 id="s" style="color:black"></h6>
									</div>

									<!-- Span to show validation messages -->
									<span id="s"></span>

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
