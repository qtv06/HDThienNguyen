package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DanhgiaDAO {
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
	public void insertDanhgia(String matv,String mahd,int diemtruongdoan,int diemtieuchi1,int diemtieuchi2,int diemtieuchi3) throws ClassNotFoundException{
		Connecti();
		String sql = String.format("insert into DANHGIA values('%s','%s','%s','%s','%s','%s')", matv,mahd,diemtruongdoan,diemtieuchi1,diemtieuchi2,diemtieuchi3);
		Statement stm;
		try {
			stm = connection.createStatement();
			stm.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
