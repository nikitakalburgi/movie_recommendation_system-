package org.techhub.MovieRecommendationSystem.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.techhub.MovieRecommendationSystem.model.LoginModel;
import org.techhub.MovieRecommendationSystem.model.UserModel;
import org.techhub.MovieRecommendationSystem.repository.*;

@Service("valserv")
public class ValidateService implements ValidateServiceImp {

	@Autowired
	ValidateRepoImp validRepo;

//	public boolean isAddRegister(LoginModel model) {
//		return ((ValidateService) validRepo).isAddRegister(model);
//	}

	@Override
	public boolean isCheck(LoginModel model) {
		return validRepo.isCheck(model);
	}

	@Override
	public boolean isCheckUser(UserModel umodel) {
		return validRepo.isCheckUser(umodel);
	}
	
	public boolean isAddRegister(final UserModel umodel)
	{
		return validRepo.isAddRegister(umodel);
	}
	
}
