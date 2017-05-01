package model;

import bean.*;
import java.util.ArrayList;
import java.sql.Array;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class HoatDongTNDAO {
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
	public ArrayList<HoatDongTN> getListHoatDongTN() throws ClassNotFoundException{
		Connecti();
		String sql = "select * from HOATDONG";
		ResultSet rs = null;
		Statement stm;
		try {
			stm = connection.createStatement();
			rs = stm.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ArrayList<HoatDongTN> listhd = new ArrayList<>();
		try {
			while(rs.next()){
				HoatDongTN hd = new HoatDongTN();
				hd.setMaHD(rs.getString("MaHD"));
				hd.setTenHD(rs.getString("TenHD"));
				hd.setMotaHD(rs.getString("MoTaHD"));
				hd.setNgaygioBD(rs.getDate("NgayGioBD"));
				hd.setNgaygioKT(rs.getDate("NgayGioKT"));
				hd.setSLToiThieuYC(rs.getInt("SLToiThieuYC"));
				hd.setSLToiDaYC(rs.getInt("SLToiDaYC"));
				hd.setThoiHanDK(rs.getString("ThoiHanDK"));
				hd.setTrangThai(rs.getString("TrangThai"));
				hd.setMaTV(rs.getString("MaTV"));
				hd.setLyDoHuyHD(rs.getString("LiDoHuyHD"));
				
				listhd.add(hd);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listhd;
	}
	public void insertHD(String mahd,String tenhd,String motahd,Date ngaygiobd, Date ngaygiokt,int soluongtt,int soluongtd,String thoihandk,String trangthai,String matv) throws ClassNotFoundException{
		Connecti();
		String sql = String.format("insert into HOATDONG values ('%s',N'%s',N'%s','%s','%s','%s','%s',N'%s',N'%s','%s','')",mahd,tenhd,motahd,ngaygiobd,ngaygiokt,soluongtt,soluongtd,thoihandk,trangthai,matv );
		try {
			Statement stm = connection.createStatement();
			stm.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}

