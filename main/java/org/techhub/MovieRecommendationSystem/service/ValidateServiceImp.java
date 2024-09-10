package org.techhub.MovieRecommendationSystem.service;

import org.techhub.MovieRecommendationSystem.model.LoginModel;
import org.techhub.MovieRecommendationSystem.model.UserModel;

public interface ValidateServiceImp {
//	public boolean isAddRegister(LoginModel model);

	public boolean isCheck(LoginModel model);

	public boolean isCheckUser(UserModel umodel);
	
	public boolean isAddRegister(final UserModel model);

}
