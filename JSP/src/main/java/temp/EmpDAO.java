package temp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmpDAO {
	private EmpDAO() throws Exception{
		// 1. 드라이버 로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("Emp");
	}
	
	// 객체를 생성하게 되면 값을 넣을때마다 계속 객체가 생성되는 것을 방지하기 위해 static 을 사용한다.
	static EmpDAO empDAO = null;
	public static EmpDAO getInstance() throws Exception{ 
		if( empDAO == null ) empDAO = new EmpDAO(); // null 일경우 객체 생성 null 이아닐경우 변수에 들어 있는 값리턴
		return empDAO;   
	}
	
	// static 사용 이유 : 객체없이 클래스명에 접근하기 위해서 사용.
	
	public void insert(EmpVO vo) throws Exception{
		// 변수 선언 (try 문 밖에서 선언 : 닫기 위해서 닫지 않을경우 서버에 문제가 생김 
		// finally을 사용하여 무조건 close가 실행되게 하기 위해서 try 사용 
		Connection con = null;
		PreparedStatement stmt = null;
		try {
		// 2. 연결객체 얻어오기
		String url = "jdbc:oracle:thin:@192.168.0.81:1521:xe";
		String user = "scott";
		String pass = "tiger";
		con = DriverManager.getConnection(url,user,pass);
		// 3. sql 작성 (emp테이블에 insert)
		String sql = "INSERT INTO emp(empno, ename, deptno, job, sal)  "
				+ "  VALUES (?,?,?,?,?)";
		// 4. 전송객체 얻어오기 ( + ?에 값 지정)
		stmt = con.prepareStatement(sql);
		stmt.setInt(1, vo.getEmpno());
		stmt.setString(2, vo.getName());
		stmt.setInt(3, vo.getDeptno());
		stmt.setString(4, vo.getJob());
		stmt.setInt(5, vo.getSal());
		// 5. 전송
		stmt.executeUpdate();
		
		} finally {
		// 6. 닫기
		stmt.close();
        con.close();
		}
	}

}
