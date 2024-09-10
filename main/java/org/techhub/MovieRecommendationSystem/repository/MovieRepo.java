package org.techhub.MovieRecommendationSystem.repository;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
//import org.tech.hubb.Crudmvc.model.EmployeeModel;
import org.techhub.MovieRecommendationSystem.model.LoginModel;
import org.techhub.MovieRecommendationSystem.model.MovieModel;
import org.techhub.MovieRecommendationSystem.model.UserModel;

@Repository
public class MovieRepo implements MovieRepoImp {
	@Autowired
	JdbcTemplate template;

	public boolean isCheck1(final MovieModel model1) {
		PreparedStatementSetter pstmt = new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, model1.getMname());
				ps.setString(2, model1.getMlang());
				ps.setString(3, model1.getMdtrel());
				ps.setString(4, model1.getMcity());
				ps.setString(5, model1.getMcategory());

			}
		};
		int list = template.update("insert into movie values ('0',?,?,?,?,?)", pstmt);
		return list > 0 ? true : false;
	}

	public List<MovieModel> getAllMovies() {
		List<MovieModel> list = template.query("select * from movie", new RowMapper<MovieModel>() {

			@Override
			public MovieModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				MovieModel model = new MovieModel();
				model.setId(rs.getInt(1));
				model.setMname(rs.getString(2));
				model.setMlang(rs.getString(3));
				model.setMdtrel(rs.getString(4));
				model.setMcity(rs.getString(5));
				model.setMcategory(rs.getString(6));

				return model;
			}

		});
		return list.size() > 0 ? list : null;

	}

	@Override
	public boolean isCheck2(final UserModel umodel) {
		PreparedStatementSetter pstmt = new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {

//				ps.setInt(1, umodel.getUid());
				ps.setString(1, umodel.getUname());
				ps.setString(2, umodel.getUemail());
				ps.setString(3, umodel.getUcontact());
				ps.setInt(4, umodel.getId());

			}
		};
		int list = template.update("insert into user values ('0',?,?,?,?)", pstmt);
		return list > 0 ? true : false;

	}

	@Override
	public void deleteMovieById(int id) {
		template.update("delete from movie where id=" + id);

	}

	public void deleteUserById(int uid) {
		template.update("delete from user where id=" + uid);
	}

	@Override
	public List<UserModel> getAllUsers() {
		List<UserModel> list = template.query("select * from user", new RowMapper<UserModel>() {

			@Override
			public UserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				UserModel umodel = new UserModel();
				umodel.setUid(rs.getInt(1));
				umodel.setUname(rs.getString(2));
				umodel.setUemail(rs.getString(3));
				umodel.setUcontact(rs.getString(4));
				umodel.setId(rs.getInt(5));

				return umodel;
			}

		});
		return list.size() > 0 ? list : null;

	}

	@Override
	public List<UserModel> getMovieData() {
		List<UserModel> list = template.query("select * from movie", new RowMapper<UserModel>() {

			@Override
			public UserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				UserModel model1 = new UserModel();
				model1.setId(rs.getInt(1));
				model1.setMname(rs.getString(2));
				return model1;
			}

		});
		if (list.size() > 0) {
			return list;
		} else {
			return null;
		}

	}

	public boolean isadduser(final UserModel umodel) {
		PreparedStatementSetter pstmt = new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {

//				ps.setInt(1, umodel.getUid());
				ps.setString(1, umodel.getUname());
				ps.setString(2, umodel.getUemail());
				ps.setString(3, umodel.getUcontact());
				//ps.setInt(4, umodel.getId());
				System.out.println("The mid is " + umodel.getId());
//				System.out.println(umodel.getUname());

			}
		};
		int list = template.update("insert into user(uname,uemail,ucontact) values (?,?,?)", pstmt);
		return list > 0 ? true : false;

	}

	@Override
	public List<MovieModel> getAllMoviesByName(String name) {
		List<MovieModel> list = template.query("select * from movie where mname like '%"+name+"%'", new RowMapper<MovieModel>() {

			@Override
			public MovieModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				MovieModel model = new MovieModel();
				model.setId(rs.getInt(1));
				model.setMname(rs.getString(2));
				model.setMlang(rs.getString(3));
				model.setMdtrel(rs.getString(4));
				model.setMcity(rs.getString(5));
				model.setMcategory(rs.getString(6));

				return model;
			}

		});
		return list.size() > 0 ? list : null;
		
		
	}

	@Override
	public List<UserModel> getAllUserByName(String userName) {
		List<UserModel> list = template.query("select * from user where uname like '%"+userName+"%'", new RowMapper<UserModel>() {

			@Override
			public UserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				UserModel umodel = new UserModel();
				umodel.setUid(rs.getInt(1));
				umodel.setUname(rs.getString(2));
				umodel.setUemail(rs.getString(3));
				umodel.setUcontact(rs.getString(4));
				umodel.setId(rs.getInt(5));

				return umodel;
			}

		});
		return list.size() > 0 ? list : null;
		
		
	}

	public void updateMovie(final MovieModel mmodel) {
		int  value=template.update("update movie set mname=?,mlang=?,mdtrel=?,mcity=?,mcategory=? where id=?",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1,mmodel.getMname());
				ps.setString(2, mmodel.getMlang());
				ps.setString(3, mmodel.getMdtrel());
				ps.setString(4,mmodel.getMcity());
				ps.setString(5, mmodel.getMcategory());
				ps.setInt(6,mmodel.getId() );
			}
			
		});
		
	}
	
	
	public MovieModel getMovieById(int id) {
		return template.queryForObject("select * from movie where id=?", new RowMapper<MovieModel>() {

			@Override
			public MovieModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				MovieModel model = new MovieModel();
				model.setId(rs.getInt(1));
				model.setMname(rs.getString(2));
				model.setMlang(rs.getString(3));
				model.setMdtrel(rs.getString(4));
				model.setMcity(rs.getString(5));
				model.setMcategory(rs.getString(6));

				return model;
			}

		},id);
		

	}
	
	
	
	
	
	
	
	}

	
	
	
	
	
	
	
	
	
	
	

	



