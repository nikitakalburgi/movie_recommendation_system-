package org.techhub.MovieRecommendationSystem.repository;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.techhub.MovieRecommendationSystem.model.LoginModel;
import org.techhub.MovieRecommendationSystem.model.UserModel;

public class UserRepo implements UserRepoImp{
	@Autowired
	JdbcTemplate template;

	@Override
	public boolean isCheckuser(final UserModel modeluser) {
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
