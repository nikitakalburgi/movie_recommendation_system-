package org.techhub.MovieRecommendationSystem.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.techhub.MovieRecommendationSystem.model.LoginModel;
import org.techhub.MovieRecommendationSystem.model.UserModel;
//import org.SubmitData.config.MvcConfiguration;
//import org.SubmitData.controller.ValidateRepoImp;
import org.techhub.MovieRecommendationSystem.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("validRepo")
public class ValidateRepo implements ValidateRepoImp {
	@Autowired
	JdbcTemplate template;

	public boolean isAddRegister(final UserModel model) {
		PreparedStatementSetter pstmt=new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, model.getUname());
				ps.setString(2,model.getUemail());
				ps.setString(3,model.getUcontact());
				}
		};
		int val = template.update("insert into register(uname,uemail,ucontact) values (?,?,?)", pstmt);
		return val>0 ? true:false;
	}

	@Override
	public boolean isCheck(final LoginModel model) {
		PreparedStatementSetter pstmt = new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, model.getUsername());
				ps.setString(2, model.getPassword());
			}
		};
		RowMapper<LoginModel> r = new RowMapper<LoginModel>() {

			@Override
			public LoginModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				LoginModel l = new LoginModel();
				l.setLoginType(rs.getString("logintype"));
				return l;
			}

		};
		List<LoginModel> list = template.query("select * from admin where username=? and password=?", pstmt, r);
		return list.size() > 0 ? true : false;
	}

	@Override
	public boolean isCheckUser(final UserModel modeluser) {
		PreparedStatementSetter pstmt = new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, modeluser.getUemail());
				ps.setString(2, modeluser.getUcontact());
			}
		};
		RowMapper<UserModel> r=new RowMapper<UserModel>() {

			@Override
			public UserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				UserModel u=new UserModel();
				u.setId(rs.getInt(1));
				u.setUname(rs.getString(2));
				u.setUemail(rs.getString(3));
				u.setUcontact(rs.getString(4));
				u.setId(rs.getInt(5));
				return u;
			}
			
		};
		List<UserModel> list = template.query("select * from user where uemail=? and ucontact=?", pstmt, r);
		return list.size() > 0 ? true : false;
	}
}
