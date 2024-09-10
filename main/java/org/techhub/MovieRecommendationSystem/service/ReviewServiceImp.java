package org.techhub.MovieRecommendationSystem.service;

import java.util.LinkedHashSet;
import java.util.List;

import org.techhub.MovieRecommendationSystem.model.ReviewModel;

public interface ReviewServiceImp {
	public boolean isAddReview(ReviewModel model);
	public List<ReviewModel> getAllReviews();
//	public void deleteReviewById(int rid);
	public LinkedHashSet<String> getRecommendedMovie(String category);

}
