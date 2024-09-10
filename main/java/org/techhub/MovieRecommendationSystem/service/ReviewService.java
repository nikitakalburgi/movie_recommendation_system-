package org.techhub.MovieRecommendationSystem.service;

import java.util.LinkedHashSet;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.techhub.MovieRecommendationSystem.model.MovieModel;
import org.techhub.MovieRecommendationSystem.model.ReviewModel;
import org.techhub.MovieRecommendationSystem.repository.ReviewRepoImp;
@Service
public class ReviewService implements ReviewServiceImp {
	@Autowired
	ReviewRepoImp reviewimp;

	public boolean isAddReview(ReviewModel rmodel) {
		
		return reviewimp.isAddReview(rmodel);
	}

	@Override
	public List<ReviewModel> getAllReviews() {
		return reviewimp.getAllReviews();
		
	}

	@Override
	public LinkedHashSet<String> getRecommendedMovie(String category) {
		
		return reviewimp.getRecommendedMovie(category);
	}

	
	
//	@Override
//	public void deleteReviewById(int rid) {
//		reviewimp.deleteReviewById(rid);
//		
//	}

}
