package member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class MemberDAO {
	
	private MemberDAO() throws Exception{
		Class.forName("oracle.jdbc.driver.OracleDriver");
	}
	
	static MemberDAO memberDAO = null;
	public static MemberDAO getInstance() throws Exception {
		if(memberDAO == null ) memberDAO = new MemberDAO();
			return memberDAO;
	}
	
	public void insert(MemberVO vo) throws Exception {
		// 변수선언
		Connection con = null;
		PreparedStatement ps = null;
		try {
			String url = "jdbc:oracle:thin:@192.168.0.81:1521:xe";
			String user = "scott";
			String pass = "tiger";
			con = DriverManager.getConnection(url,user,pass);
			
			String sql = "INSERT INTO member(name, nicname, email, age)  "
					+ "  VALUES (?,?,?,?)";
			
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getNickName());
			ps.setString(3, vo.getEmail());
			ps.setInt(4, vo.getAge());
			
			ps.executeUpdate();
			
			
		}finally {
			ps.close();
			con.close();
			
		}
	}

}
