<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
<style>
.gradient-custom-3 {
	/* fallback for old browsers */
	/* background: #84fab0; */
	/* Chrome 10-25, Safari 5.1-6 */
	/* background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5)); */
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	/* background: linear-gradient(to right, rgba(252, 205, 205, 0.2), rgba(252, 205, 205, 0.2)) */
	
}

.gradient-custom-4 {
	/* fallback for old browsers */
	background: #84fab0;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1),
		rgba(143, 211, 244, 1));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(132, 250, 176, 1),
		rgba(143, 211, 244, 1))
}
</style>
<body>
	<section class="vh-100 bg-image"
		style="background-image: url(./imgs/background-img.webp); background-size: 100% 100%; background-repeat: no-repeat;">
		<div class="mask d-flex align-items-center h-100 gradient-custom-3">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-11 col-md-9 col-lg-7 col-xl-5">
						<div class="container-card"
							style="border-top-right-radius: 50px; border-bottom-left-radius: 50px; background-color: transparent; border-top: 4px solid rgb(0, 0, 0); border-bottom: 4px solid rgb(0, 0, 0);">
							<div class="card-body p-4">
								<h2 class="text-uppercase text-center  mt-1 mb-5">Create an
									account</h2>

								<form name='frm' action='registerUser' method='Post'>

									<div data-mdb-input-init class="form-outline mb-5">
										<input type="text" id="form3Example1cg"
											class="form-control form-control-lg bg-transparent"
											placeholder="Enter your Name" name="uname"
											style="border: none; border-bottom: 2px solid rgb(5, 5, 5);; border-radius: 0%;" />
										<!-- <label class="form-label" for="form3Example1cg">Your Name</label> -->
									</div>

									<div data-mdb-input-init class="form-outline mb-5">
										<input type="email" id="form3Example3cg"
											class="form-control form-control-lg bg-transparent"
											placeholder="Enter your Email" name="uemail"
											style="border: none; border-bottom: 2px solid rgb(4, 4, 4);; border-radius: 0%;" />
										<!-- <label class="form-label" for="form3Example3cg">Your Email</label> -->
									</div>

									<div data-mdb-input-init class="form-outline mb-5">
										<input type="password" id="form3Example4cg"
											class="form-control form-control-lg bg-transparent"
											placeholder="Enter your Contact" name="ucontact"
											style="border: none; border-bottom: 2px solid rgb(10, 10, 10);; border-radius: 0%;" />
										<!-- <label class="form-label" for="form3Example4cg">Password</label> -->
									</div>

									<div class="form-check d-flex justify-content-center mb-4">
										<input class="form-check-input me-2" type="checkbox" value=""
											id="form2Example3cg" /> <label class="form-check-label"
											for="form2Example3g"> I agree all statements in <a
											href="#!" class="text-body"><u>Terms of service</u></a>
										</label>
									</div>

									<div class="d-flex justify-content-center">
										<button type="submit" data-mdb-button-init
											data-mdb-ripple-init
											class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>
									</div>

									<p class="text-center text-muted mt-5 mb-0">
										Have already an account? <a href="LoginPage"
											class="fw-bold text-body"><u>Login here</u></a>
									</p>

								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>