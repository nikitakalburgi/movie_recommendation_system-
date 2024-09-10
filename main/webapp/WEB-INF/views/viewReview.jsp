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

		<input type="text" name="name" class="from-control" id="name"
			placeholder="search..." onkeyup="searchName(this.value)"/>
			
	
	<h1>View Reviews</h1>
	<div id="gridshow">
	
	<table class="table">
		<tr>
			<th>MovieID</th>
			<th>MovieName</th>
			<th>Id</th>
			<th>Text</th>
			<th>Rating</th>
			<!-- <th>DELETE</th>
			<th>UPDATE</th> -->
		</tr>
		<c:forEach var="review" items="${reviewlist}">
			<tr>

                <td>${review.getId()}</td>
                <td>${review.getMname()}</td>
				<td>${review.getRid()}</td>
				
				<td>${review.getTxt()}</td>
				<td>${review.getRating()}</td>
				<%-- <td><a href='delMovieById?movieid=${e.getId()}'>DELEET</a></td>
				<td><a href='updateMovieById?movieid=${e.getId()}'>UPDATE</a></td> --%>
			</tr>


		</c:forEach>
	</table>
	</div>
	</div>
</body>
</html> 













 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 









