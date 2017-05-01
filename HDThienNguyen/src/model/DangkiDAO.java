package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DangkiDAO {
	String url = "jdbc:sqlserver://localhost:1433;databaseName=HoatDongThienNguyen";
	String userName = "sa";
	String password = "vovanquang";
	Connection connection;
	void Connecti() throws ClassNotFoundException{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		try {
			connection = DriverManager.getConnection(url,userName,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void insertDangki(String matv,String hoten,Date ngaydangki,String mahd) throws ClassNotFoundException{
		Connecti();
		String sql = String.format("insert into DANGKI values (N'%s',N'%s','%s',N'%s')", matv,hoten,ngaydangki,mahd);
		try {
			Statement stm = connection.createStatement();
			stm.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
