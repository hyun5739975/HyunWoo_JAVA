package jdbc;

import java.sql.*;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import jdbc.tempMemberVO;

//DAO => Database Access Objcet
public class tempMemberDAO {
	private final String JDBC_DRIVER="oracle.jdbc.driver.OracleDriver";
	private final String JDBC_URL="jdbc:oracle:thin:@localhost:1521:orcl";
	private final String USER="scott";
	private final String PASS="tiger";
	
	public tempMemberDAO() {
		try {
			Class.forName(JDBC_DRIVER);
			
		}catch(Exception e) {
			System.out.println("Error : JDBC 드라이버 로딩 실패");
		}
	}
	
	private Connection getConnection() {
		Connection con = null;
		
		try {
			Context init = new InitialContext();
			DataSource ds =
					(DataSource)init.lookup("java:comp/env/jdbc/mydb");
					con = ds.getConnection();
		}catch(Exception e) {
			System.out.println("Connecion 생성 실패~~~");
		}
		return con;
	}
	
	//제네릭(벡터)
	public Vector<tempMemberVO> getMemberList(){
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Vector<tempMemberVO> vecList = new Vector<tempMemberVO>();
		
		try {
			con = ConnUtil.getConnection();
			//con = DriverManager.getConnection(JDBC_URL, USER, PASS);
			String strQuery = "select * from tempMember ";
			stmt = con.createStatement();
			rs = stmt.executeQuery(strQuery);
			
			while(rs.next()) {
				tempMemberVO vo = new tempMemberVO();
		
				vo.setId(rs.getString("id"));
				vo.setPasswd(rs.getString("passwd"));
				vo.setName(rs.getString("name"));
				vo.setMem_num1(rs.getString("mem_num1"));
				vo.setMem_num2(rs.getString("mem_num2"));
				vo.setE_mail(rs.getString("e_mail"));
				vo.setPhone(rs.getString("phone"));
				vo.setZipcode(rs.getString("zipcode"));
				vo.setAddress(rs.getString("address"));
				vo.setJob(rs.getString("job"));
				
				vecList.add(vo);
			}
			
		}catch(Exception ex) {
			System.out.println("Exception : " + ex);
		}finally {
			if(rs!=null)try{rs.close();}catch(SQLException se){};
			if(stmt!=null)try{stmt.close();}catch(SQLException se){};
			if(con!=null)try{con.close();}catch(SQLException se){};
		}
		return vecList;
	}
}
