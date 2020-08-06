package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBcon {

	static
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
		}catch (ClassNotFoundException ce)
		{
			ce.printStackTrace();
		}
		
	}
	public static Connection getConnection() throws SQLException{
		
		return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
		
	}
}
