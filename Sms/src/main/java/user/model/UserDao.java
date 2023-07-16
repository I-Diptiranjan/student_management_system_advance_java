package user.model;

import java.sql.*;


public class UserDao {
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public UserDao(Connection con) {
		this.con = con;
	}
	
	public User userLogin(String email, String password) {
		User user = null;
        try {
            query = "select * from students where email=? and password=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();
            
            if(rs.next()){
            	user = new User();
            	user.setId(rs.getInt("id"));
            	user.setFname(rs.getString("fname"));
            	user.setLname(rs.getString("lname"));
            	user.setEmail(rs.getString("email"));
            	user.setEmail(rs.getString("password"));
            	user.setEmail(rs.getString("father_name"));
            	user.setEmail(rs.getString("mother_name"));
            	user.setEmail(rs.getString("gender"));
            	user.setEmail(rs.getString("dob"));
            	user.setEmail(rs.getString("blood_group"));
            	user.setEmail(rs.getString("address"));
            	user.setEmail(rs.getString("city"));
            	user.setEmail(rs.getString("state"));
            	user.setEmail(rs.getString("country"));
            	user.setEmail(rs.getString("pin_code"));
            	user.setEmail(rs.getString("course"));
            	user.setEmail(rs.getString("department"));
            	user.setEmail(rs.getString("contactno"));
            	user.setEmail(rs.getString("profile_photo"));
            	user.setEmail(rs.getString("posting_date"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return user;
    }
}
