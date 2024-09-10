package org.techhub.MovieRecommendationSystem.repository;

import org.techhub.MovieRecommendationSystem.model.LoginModel;
import org.techhub.MovieRecommendationSystem.model.UserModel;

public interface ValidateRepoImp {
//	public boolean isAddRegister(final LoginModel model);

	public boolean isCheck(LoginModel model);

	public boolean isCheckUser(UserModel umodel);
	
	public boolean isAddRegister(final UserModel model);

}
