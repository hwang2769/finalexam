package user;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bmo.vo.Email;

public class UserDAO {

	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
			public UserDAO() {
				try {
					String dbURL = "jdbc:mysql://localhost:3306/BMI";
					String dbID= "root";
					String dbPassword="jiwon2769";
					Class.forName("com.mysql.jdbc.Driver");
					conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
				}catch (Exception e) {
						e.printStackTrace();
				}
			}
			
		public int login(String id, String password) {
			String SQL="SELECT password FROM CUSTOMER WHRER id=?";
			try {
						pstmt = conn.prepareStatement(SQL);
						pstmt.setString(1, id);
						rs=pstmt.executeQuery();
						if(rs.next()) {
									if(rs.getString(1).contentEquals(password)) {
										return 1; //로그인 성공
									}
									else
										return 0; //비밀번호 오류
						}
						return -1; //아이디X
			}catch (Exception e) {
				e.printStackTrace();
			}

			return -2; //DB오류
		}

		public static UserDAO getInstance() {
			// TODO Auto-generated method stub
			return null;
		}

		public int join(User user) {
		 String SQL = "INSERT INTO customer VALUES(?,?,?)"; //데이터 삽입
		 			try {
		 				pstmt=conn.prepareStatement(SQL);
		 				pstmt.setString(1, user.getID());
		 				pstmt.setString(2, user.getPassword());
		 				pstmt.setString(3, user.getEmail());
		 				return pstmt.executeUpdate();
		 			}catch(Exception e) {
		 				e.printStackTrace();
		 			}
		 			return -1;
		}
}

