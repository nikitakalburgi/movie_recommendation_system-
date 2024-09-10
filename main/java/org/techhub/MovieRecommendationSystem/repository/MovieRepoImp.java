package org.techhub.MovieRecommendationSystem.repository;

import java.util.List;


import org.techhub.MovieRecommendationSystem.model.LoginModel;
import org.techhub.MovieRecommendationSystem.model.MovieModel;
import org.techhub.MovieRecommendationSystem.model.UserModel;
//import org.techhub.MovieRecommendationSystem.service.Moviemodel;

public interface MovieRepoImp {
	public boolean isCheck1(MovieModel model1);

	public List<MovieModel> getAllMovies();

	public boolean isCheck2(UserModel umodel);

	public void deleteMovieById(int id);

	public List<UserModel> getAllUsers();

	public void deleteUserById(int uid);

	public List<UserModel> getMovieData();
	
	public boolean isadduser(final UserModel umodel);
	
	public List<MovieModel> getAllMoviesByName(String name);
	
	public List<UserModel> getAllUserByName(String userName);
	
//	public void updateMovie( MovieModel mmodel,int id);
	
	public MovieModel getMovieById(int id);
	
	public void updateMovie(MovieModel mmodel);
}
