package org.techhub.MovieRecommendationSystem.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.techhub.MovieRecommendationSystem.model.MovieModel;
import org.techhub.MovieRecommendationSystem.model.ReviewModel;

@Repository
public class ReviewRepo implements ReviewRepoImp {
	@Autowired
	JdbcTemplate template;

	@Override
	public boolean isAddReview(final ReviewModel rmodel) {
		int no;
		PreparedStatementSetter pstmt = new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {

				ps.setInt(1, rmodel.getId());
//	            ps.setInt(2, rmodel.getUid());  // Ensure this UID exists in 'user' table
				ps.setString(2, rmodel.getTxt());
				ps.setInt(3, rmodel.getRating());
			}
		};
		no = template.update("INSERT INTO review (id,txt, rating) VALUES (?, ?, ?)", pstmt);
		return (no > 0) ? true : false;
	}

//	public List<ReviewModel> getAllReviews() {
//		List<ReviewModel> list = template.query(
////				"select m.mname,r.rid,r.txt,r.rating from movie m inner join review r on r.id=r.rid group by m.mname,r.rid,r.txt,r.rating",
//				"select m.mname,r.rid,r.txt,r.rating from movie m inner join review r on r.id=r.rid group by m.mname,r.rid,r.txt,r.rating;",
//				new RowMapper<ReviewModel>() {
//
//					@Override
//					public ReviewModel mapRow(ResultSet rs, int rowNum) throws SQLException {
//						ReviewModel rmodell = new ReviewModel();
//						rmodell.setMname(rs.getString(1));
//						rmodell.setRid(rs.getInt(2));
//						// rmodell.setId(rs.getInt(2));
//						// rmodell.setUid(rs.getInt(3));
//						rmodell.setTxt(rs.getString(3));
//						rmodell.setRating(rs.getInt(4));
//
//						return rmodell;
//					}
//
//				});
//		return list.size() > 0 ? list : null;
//
//	}
//	
////	public void deleteReviewById(int rid) {
////		template.update("delete from review where rid=" + rid);
////
////	}
//	public void deleteReviewById(int rid) {
//	    template.update("DELETE FROM review WHERE rid = ?", rid);
//	}
	
	public List<ReviewModel> getAllReviews() {
		List<ReviewModel> list = template.query("SELECT m.id, m.mname, r.rid, r.txt, r.rating FROM movie m INNER JOIN review r ON m.id = r.rid", new RowMapper<ReviewModel>() {

			
			public ReviewModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				ReviewModel rmodel = new ReviewModel();
				rmodel.setRid(rs.getInt(3));
				rmodel.setId(rs.getInt(1));
//				rmodel.setUid(rs.getInt(3));
				rmodel.setTxt(rs.getString(4));
				rmodel.setRating(rs.getInt(5));
				rmodel.setMname(rs.getString(2));
				

				return rmodel;
			}

		});
		return list.size() > 0 ? list : null;

	}
	
//	public LinkedHashSet<String> getRecommendedMovie(String category)
//	{
//List<MovieModel> list = template.query("select m.mname  from movie m left join review r on r.mid=m.mid where m.mcategory=? and  r.rating>=( select avg(r.rating) from movie m left join review r on r.mid=m.mid where m.mcategory=?)", new RowMapper<MovieModel>() {
//
//			
//			public MovieModel mapRow(ResultSet rs, int rowNum) throws SQLException {
//				MovieModel m = new MovieModel();
//				m.setMcategory(rs.getString(1));
//				m.setMcategory(rs.getString(2));
////				
//
//				return m;
//			}
//
//		});
//		return list;
//		
//	}
//	public LinkedHashSet<String> getRecommendedMovie(String category) {
//	    List<MovieModel> list = template.query("select m.mname from movie m left join review r on r.mid=m.mid where m.mcategory=? and r.rating>=( select avg(rating) from review where mid=m.mid)", 
//	    new RowMapper<MovieModel>() {
//	        public MovieModel mapRow(ResultSet rs, int rowNum) throws SQLException {
//	            MovieModel m = new MovieModel();
//	            m.setMname(rs.getString(1));  // Extract only the movie name
//	            return m;
//	        }
//	    });
//	    
//	    // Now convert the list to a LinkedHashSet<String> containing only movie names
//	    LinkedHashSet<String> movieNames = new LinkedHashSet<String>();
//	    for (MovieModel movie : list) {
//	        movieNames.add(movie.getMname());  // Add movie name to LinkedHashSet
//	    }
//	    
//	    return movieNames;  // Return the LinkedHashSet of movie names
//	}
	
	
	
	public LinkedHashSet<String> getRecommendedMovie(String category) {
	    List<MovieModel> list = template.query("SELECT m.mname FROM movie m LEFT JOIN review r ON r.id=m.id WHERE m.mcategory=? AND r.rating>=(SELECT AVG(rating) FROM review WHERE id=m.id)", 
	        new Object[] { category }, 
	        new RowMapper<MovieModel>() {
	            public MovieModel mapRow(ResultSet rs, int rowNum) throws SQLException {
	                MovieModel m = new MovieModel();
	                m.setMname(rs.getString(1));  // Extract the movie name from the result set
	                return m;
	            }
	        });

	    LinkedHashSet<String> movieNames = new LinkedHashSet<String>();
	    for (MovieModel movie : list) {
	        movieNames.add(movie.getMname());  // Add movie name to LinkedHashSet
	    }

	    return movieNames;
	}

}
