package org.techhub.MovieRecommendationSystem.controller;

import java.util.*;

import org.techhub.MovieRecommendationSystem.model.*;
import org.techhub.MovieRecommendationSystem.service.MovieServiceImp;
import org.techhub.MovieRecommendationSystem.service.ReviewServiceImp;
import org.techhub.MovieRecommendationSystem.service.ValidateService;
import org.techhub.MovieRecommendationSystem.service.ValidateServiceImp;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@Autowired
	ValidateServiceImp valserv;

	@Autowired
	MovieServiceImp movieserv;

	@Autowired
	ReviewServiceImp reviewserv;

	@RequestMapping(value = "/")

	public String getCall() {
		return "startpage";
	}

	@RequestMapping(value = "/getCall6")

	public String getCall6() {
		return "Login";
	}

	@RequestMapping(value = "/getCall7")

	public String getCall7() {
		return "LoginUser";
	}

	@RequestMapping(value = "/LoginController")
	public String getCall(LoginModel model, Map map) {
		boolean b = valserv.isCheck(model);
		if (b) {
			return "admindashboard";
		} else {
			return "Login";
		}

	}

	@RequestMapping("/LoginUserController")
	public String getLoginUser(HttpServletRequest request, UserModel umodel, Map map) {
		HttpSession session = request.getSession(true);
		session.setAttribute("loginuser", umodel);
		boolean b = valserv.isCheckUser(umodel);
		if (b) {
			System.out.println("Success");
			return "Userdashboard";

		} else {
			System.out.println("No");
			return "LoginUser";
		}
	}

	@RequestMapping(value = "/Register")
	public String getCall1() {
		return "Register";
	}

	@RequestMapping(value = "/LoginPage")
	public String getCall2() {
		return "Login";
	}

	@RequestMapping(value = "/getCall3")
	public String getCall3() {
		return "addmovie";
	}

	@RequestMapping(value = "/AddMovieServlet")
	public String getCall(MovieModel model1, Map map) {
		boolean b = movieserv.isCheck1(model1);
		if (b) {
			map.put("msg", "Movie Added");
			return "addmovie";
		} else {
			map.put("msg", "Some Problem while adding");
			return "addmovie";
		}

	}

	public List<MovieModel> getAllMovies() {
		List<MovieModel> list = movieserv.getAllMovies();
		return list;
	}

	@RequestMapping(value = "/viewAllMovie")
	public String viewAllMovie(Map map) {
		map.put("movielist", this.getAllMovies());
		return "viewMovie";
	}

	@RequestMapping(value = "/addUser")
	public String addUser() {
		return "adduser";
	}

	@RequestMapping(value = "/registerUser")
	public String getUser(UserModel umodel, Map map) {
		boolean b =valserv.isAddRegister(umodel);
		System.out.println(umodel);
		if (b) {
			map.put("msg", "user Added");
			return "LoginUser";

		} else {
			map.put("msg", "Some Problem while adding");
			return "Register";

		}
		
		

	}

	@RequestMapping("/delMovieById")
	public String deleteMovieById(@RequestParam("movieid") Integer movieid, Map map)

	{

		movieserv.deleteMovieById(movieid);

		map.put("movielist", this.getAllMovies());
//		map.put("movielist", this.getAllMovies());
		return "viewMovie";
	}

	@RequestMapping("/updateMovieById")
	public String updateMovieById(@RequestParam("movieid") Integer movieid, Model model)

	{
		MovieModel mlist=movieserv.getMovieById(movieid);
		model.addAttribute("model",mlist);
		System.out.println(movieid);
		System.out.println(mlist);
//		movieserv.updateMovie(, movieid);
//
//		map.put("movielist", this.getAllMovies());
	//	return "viewMovie";
		return "update";
	}
	
	@RequestMapping("/updatemovie")
	public String updateMovie(MovieModel model,Map map)

	{
		movieserv.updateMovie(model);
		map.put("movielist", this.getAllMovies());
		return "viewMovie";
		
	}
	
	
//	@RequestMapping(value = "/LoginUserController")
//	public String registerUser(UserModel umodel, Map map) {
//		boolean b = movieserv.isCheck2(umodel);
//		if (b) {
//			map.put("msg", "user Added");
//
//		} else {
//			map.put("msg", "Some Problem while adding");
//
//		}
//		return "Register";
//
//	}

	public List<UserModel> getAllUsers() {
		List<UserModel> list = movieserv.getAllUsers();
		return list;
	}

	@RequestMapping(value = "/viewAllUser")
	public String viewAllUser(Map map) {

		map.put("userlist", this.getAllUsers());
		return "viewUser";
	}

	@RequestMapping("/deluserById")
	public String deleteUserById(@RequestParam("userid") Integer userid, Map map)

	{

		movieserv.deleteUserById(userid);

		map.put("userlist", this.getAllUsers());
		return "viewUser";
	}

	@RequestMapping("/movieuserral")
	public String MovieUser(UserModel umodel, Map map) {
		List<UserModel> MovieData = movieserv.getMovieData();
		map.put("MovieList", MovieData);
		return "MovieUserPage";
	}

	@RequestMapping(value = "/addUserToMovie")
	public String adduser(UserModel umodel, Map map) {
		List<UserModel> MovieData = movieserv.getMovieData();
		map.put("MovieList", MovieData);

		boolean b = movieserv.isadduser(umodel);
		if (b) {
			return "MovieUserPage";
		}
		return "MovieUserPage";

	}

	@RequestMapping("/viewallmovieuer")
	public String viewallmovieuer() {
		return "ViewMovieUser";
	}

	@RequestMapping("/searchByName")
	@ResponseBody
	public String searchByNameUrl(@RequestParam("n") String name, Map map) {
		List<MovieModel> list = movieserv.getAllMoviesByName(name);
		String str = "";
		str = str
				+ "<table class='table'><tr><th>ID</th><th>Name</th><th>Language</th><th>Date</th><th>City</th><th>Category</th><th>DELETE</th><UPDATE>ID</th></tr>";
		for (MovieModel e : list) {
			str = str + "<tr>";
			str = str + "<td>" + e.getId() + "</td>";
			str = str + "<td>" + e.getMname() + "</td>";
			str = str + "<td>" + e.getMlang() + "</td>";
			str = str + "<td>" + e.getMdtrel() + "</td>";
			str = str + "<td>" + e.getMcity() + "</td>";
			str = str + "<td>" + e.getMcategory() + "</td>";
			str = str + "</tr>";

		}

		str = str + "</table>";

		return str;
	}

	@RequestMapping("/searchByUserName")
	@ResponseBody
	public String searchByUNameUrl(@RequestParam("nu") String userName) {
		List<UserModel> list = movieserv.getAllUserByName(userName);
		String str = "";
		str = str
				+ "<table class='table'><tr><th>ID</th><th>Name</th><th>Email</th><th>Contact</th><th>DELETE</th><UPDATE>ID</th></tr>";
		for (UserModel e : list) {
			str = str + "<tr>";
			str = str + "<td>" + e.getUid() + "</td>";
			str = str + "<td>" + e.getUname() + "</td>";
			str = str + "<td>" + e.getUname() + "</td>";
			str = str + "<td>" + e.getUemail() + "</td>";
			str = str + "<td>" + e.getUcontact() + "</td>";
			str = str + "</tr>";

		}

		str = str + "</table>";

		return str;
	}

	@RequestMapping(value = "/getreview")
	public String addreviewcall(Map<String, Object> map) {
		List<MovieModel> list = movieserv.getAllMovies();// Assuming ms is your service that gets the list of movies
		map.put("movielist", list); // Adding the list of movies to the map
		return "addreview";
	}

//	@RequestMapping(value = "/adddddreview")
//	public String getReview(ReviewModel rmodel, Map<String, Object> map) {
//		boolean b =reviewserv.isAddReview(rmodel);
//		if (b) {
//			map.put("msg", "Review Added");
//			return "addreview";
//		} else {
//			map.put("msg", "Some Problem while adding");
//			return "addreview";
//		}
//
//	}

	@RequestMapping(value = "/adddddreview")
	public String getReview(ReviewModel rmodel, Map<String, Object> map) {
		boolean b = reviewserv.isAddReview(rmodel);
		if (b) {
			map.put("msg", "Review Added");
		} else {
			map.put("msg", "Some Problem while adding");
		}

		// Repopulate the movie list
		List<MovieModel> list = movieserv.getAllMovies();
		map.put("movielist", list);

		return "addreview";
	}

//	public List<ReviewModel> getAllReviews() {
//		List<ReviewModel> list = reviewserv.getAllReviews();
//		return list;
//	}
//	
//	@RequestMapping(value = "/viewreview")
//	public String viewAllReview(Map map) {
//		System.out.println(this.getAllReviews());
//		map.put("reviewlist", this.getAllReviews());
//		return "viewReview";
//	}
	
	public List<ReviewModel> getAllReviews() {
		List<ReviewModel> list = reviewserv.getAllReviews();
		return list;
	}

	@RequestMapping(value = "/viewreview")
	public String viewAllReview(Map map) {
		map.put("reviewlist", this.getAllReviews());
		return "viewReview";
	}
	
	
	

	//@RequestMapping(value = "/getrecommendation")
//	public String getRecommnedation() {
//		return "recommendationmovie";
//	}
//	
//	
//	
//	@RequestMapping(value = "/getRecommendedMovies", method = RequestMethod.POST)
//    public String getRecommendedMovies(@RequestParam("category") String category, Model model) {
//        // Fetch recommended movies for the selected category
//        LinkedHashSet<String> recommendedMovies = reviewserv.getRecommendedMovie(category);
//
//        // Add the data to the model to be accessible in the JSP page
//        model.addAttribute("category", category);
//        model.addAttribute("recommendedMovies", recommendedMovies);
//
//        // Return the view name
//        return "recommendationmovie";  // JSP page name
//    }
	
	@RequestMapping(value = "/getrecommendation")
    public String getRecommendationPage() {
        return "recommendationmovie";  // This opens recommendationmovie.jsp
    }

    // Handles form submission to fetch the recommended movies based on category
    @RequestMapping(value = "/getRecommendedMovies", method = RequestMethod.POST)
    public String getRecommendedMovies(@RequestParam("category") String category, Model model) {
        // Fetch recommended movies from the service based on the category
        LinkedHashSet<String> recommendedMovies = reviewserv.getRecommendedMovie(category);

        // Add the selected category and the recommended movies to the model to pass to the JSP page
        model.addAttribute("category", category);
        model.addAttribute("recommendedMovies", recommendedMovies);

        // Return the view name to display recommendations on the same page
        return "recommendationmovie";  // Return the same JSP page
    }
	
	
	
	
//	@RequestMapping(value="/registerUser")
//	public String register()
//	{
//		return "LoginUser";
//	}

}
