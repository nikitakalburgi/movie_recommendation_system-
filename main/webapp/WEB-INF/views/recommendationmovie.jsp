<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>hello</h1>
</body>
</html> --%>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Recommended Movies</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <!-- Movie Category Selection Form -->
        <h2>Select Movie Category:</h2>
        <form action="getRecommendedMovies" method="post">
            <label for="category">Enter Category:</label>
            <input type="text" name="category" id="category" placeholder="Enter category" required>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        
        <!-- Display Selected Category and Recommended Movies -->
        <h4>${category != null ? 'Selected Category: ' + category : ''}</h4>

        <h3>Recommended Movie:</h3>
        <ul>
            <c:forEach var="movie" items="${recommendedMovies}">
                <li>--> ${movie}</li>  <!-- Display each movie with --> symbol -->
            </c:forEach>
        </ul>
    </div>
</body>
</html>
 --%>
 
 
 
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Recommended Movies</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <!-- Form to select the movie category -->
        <h2>Select Movie Category:</h2>
        <form action="getRecommendedMovies" method="post">
            <label for="category">Enter Category:</label>
            <input type="text" name="category" id="category" placeholder="Enter category" required>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>

        <!-- If the category is selected, display it -->
        <c:if test="${not empty category}">
            <h4>Selected Category: <c:out value="${category}"/></h4>
        </c:if>

        <!-- If there are recommended movies, display them -->
        <h3>Recommended Movies:</h3>
        <ul>
            <c:forEach var="movie" items="${recommendedMovies}">
                <li>--> <c:out value="${movie}"/></li>
            </c:forEach>
        </ul>
    </div>
</body>
</html>
 