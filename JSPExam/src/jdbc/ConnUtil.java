package jdbc;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;


public class ConnUtil {
	
	
	static Connection getConnection() {
		Connection con = null;

		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mydb"); 
			
			con = ds.getConnection();
			
		}catch(Exception e){
			System.out.println("Connecion 생성 실패");
		}
		return con;
	}

}

