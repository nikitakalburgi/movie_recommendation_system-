
package org.techhub.MovieRecommendationSystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.techhub.MovieRecommendationSystem.model.LoginModel;
import org.techhub.MovieRecommendationSystem.model.MovieModel;
import org.techhub.MovieRecommendationSystem.model.UserModel;
import org.techhub.MovieRecommendationSystem.repository.MovieRepoImp;
//import org.techhub.MovieRecommendationSystem.repository.ValidateRepoImp;

@Service
public class MovieService implements MovieServiceImp {
	@Autowired
	MovieRepoImp movieRepo;

	public boolean isCheck1(MovieModel model1) {
		return movieRepo.isCheck1(model1);
	}

	@Override
	public List<MovieModel> getAllMovies() {

		return movieRepo.getAllMovies();
	}

	@Override
	public boolean isCheck2(UserModel umodel) {
		return movieRepo.isCheck2(umodel);

	}

	@Override
	public void deleteMovieById(int id) {
		movieRepo.deleteMovieById(id);

	}

	@Override
	public void deleteUserById(int uid) {
		movieRepo.deleteUserById(uid);

	}

	@Override
	public List<UserModel> getAllUsers() {
		return movieRepo.getAllUsers();

	}

	@Override
	public List<UserModel> getMovieData() {
		return movieRepo.getMovieData();
	}
	
	public boolean isadduser(final UserModel umodel)
	{
		System.out.println(umodel);
		return movieRepo.isadduser(umodel);
	}

	@Override
	public List<MovieModel> getAllMoviesByName(String name) {
		
		return movieRepo.getAllMoviesByName(name);
	}

	@Override
	public List<UserModel> getAllUserByName(String userName) {
		
		return movieRepo.getAllUserByName(userName);
	}

	@Override
	public void updateMovie(MovieModel mmodel) {
		 movieRepo.updateMovie(mmodel);
		
	}

	@Override
	public MovieModel getMovieById(int id) {
		// TODO Auto-generated method stub
		return movieRepo.getMovieById(id) ;
	}
	
	
	

//	@Override
//	public void updateMovie(int id, String mname, String mlang, String mdtrel, String mcity, String mcategory) {
//		movieRepo.updateMovie(id, mname, mlang, mdtrel, mcity, mcategory);
//		
//	}

	

	
	

	



}
