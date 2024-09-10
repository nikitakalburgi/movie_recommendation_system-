package org.techhub.MovieRecommendationSystem.repository;

import java.util.LinkedHashSet;
import java.util.List;

import org.techhub.MovieRecommendationSystem.model.ReviewModel;

public interface ReviewRepoImp {
	public boolean isAddReview(ReviewModel model);
	public List<ReviewModel> getAllReviews();
//	public void deleteReviewById(int rid);
	public LinkedHashSet<String> getRecommendedMovie(String category);
	

}
